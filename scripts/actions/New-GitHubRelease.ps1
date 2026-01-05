<#
  .Synopsis
    Creates a new GitHub release based on a previous release.
  .Description
    Increments a previous release tag version, creates a new tag and release.
    Automatically generates release notes.

    Designed for PowerShell.Core 7.x.
    By https://github.com/kiweezi
  .Parameter ChangeType
    String deciding the size of the change e.g. v major.minor.revision.
  .Parameter Repository
    String of the owner and repository name. For example, octocat/Hello-World.
  .Parameter AssetPath
    Path to an asset to upload to the release.
  .Parameter WhatIf
    Switch to run the script in WhatIf mode.
  .Example
    # Trigger a new minor release.
    PS> ./Get-InstanceMatrix.ps1 -ChangeType "minor" -Repository "RicochetStudios/hosting"
    "v0.1.3" -> "v0.2.0"
#>


[CmdletBinding()]
param (
  [Parameter()]
  [string]
  $ChangeType = "revision",
  [Parameter(Mandatory = $true)]
  [string]
  $Repository,
  [Parameter()]
  [string]
  $AssetPath = "./resume.pdf",
  [Parameter()]
  [switch]
  $WhatIf
)


function Get-CurrentTag {
  # Get the current release tag.

  # Get a list of all releases.
  try {
    $releaseList = gh release list --repo $Repository --exclude-drafts
  }
  catch {
    Write-Output "Something went wrong when getting the list of releases."
    Write-Output $_
  }

  # Get the latest release tag and return it.
  foreach ($release in $releaseList) {
    if ($release.contains("Latest")) {
      return $release.split()[2]
    }
  }
}


function New-Release {
  # Create a new tag and release.
  param (
    [Parameter(Mandatory = $true)]
    [string]
    $Tag
  )

  # Create the new tag and release.
  try {
    $release = gh release create $Tag $AssetPath --generate-notes --repo $Repository
  }
  catch {
    Write-Output "Something went wrong when creating the tag and release."
    Write-Output $_
  }

  return $release
}


# Get the current release tag.
$currentTag = Get-CurrentTag #"v0.1.3"

# Get the element index of the choice.
$availableChoices = @("major", "minor", "revision")
$segmentIndex = $availableChoices.IndexOf($ChangeType)

# Create a list of the different segments of the tag.
$tagSegments = $currentTag.Replace("v", "").Split(".")

# Increment the version.
[int]$tagSegments[$segmentIndex] += 1
foreach ($segment in ($segmentIndex + 1)..($tagSegments.Length - 1)) {
  if ($segmentIndex -lt ($tagSegments.Length - 1)) {
    $tagSegments[$segment] = "0"
  }
}

# Format to a string again.
$newTag = "v" + ($tagSegments -join ".")

# Create a new tag and release.
if (-not($WhatIf)) {
  $newRelease = New-Release -Tag $newTag
} else {
  $newRelease = "https://github.com/$($Repository)/releases/tag/$($newTag)"
}

# Return the results.
return @{
  "tag"     = $newTag;
  "release" = $newRelease;
}