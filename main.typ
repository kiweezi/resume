/*
=== NOTICE ===
This template uses the Font Awesome 7 Desktop icons
You can download the fonts here: https://fontawesome.com/download
You either need to install them on your system, or unzip and
upload them to assets/icons/ if you use the Typst web app or locally.
*/

#import "@preview/lavandula:0.1.1": *

#show: lavandula-theme

#set text(lang: "en")
#set document(
  title: "Rhys Jones (CV)",
  author: "Rhys Jones",
  date: auto,
)

#cv(
  sidebar-position: "left",
  sidebar: [
    = Rhys Jones
    ==== DevOps Engineer

    #contact-list((
      (icon: "location-dot", text: "Trondheim, Norway"),
      (icon: "at", icon-solid: true, text: link("mailto:rhysmjones2308@gmail.com")[rhysmjones2308\@gmail.com]),
      (icon: "phone", text: "+44 7842 653898"),
      (icon: "linkedin", text: link("https://www.linkedin.com/in/rhysmichaeljones/")[rhysmichaeljones]),
      (icon: "github", text: link("https://github.com/kiweezi")[kiweezi]),
    ))

    #sidebar-section(title: "About me")[
      #set par(justify: true)
      #show par: it => block(width: 100%, it)

      I’m Rhys, a DevOps Engineer with a passion for automation, algorithms, and adventure. Through my career I have advanced a broad range of technical knowledge, as well as my own learning and education, and I am looking to progress these skills in an ever-evolving field.
    ]

    #sidebar-section(title: "Technical skills")[
      #skill-group(
        name: "DevOps",
        icon: "code-compare",
        skills: (
          "Git",
          "GitHub + Actions",
          "Azure DevOps + Pipelines",
        )
      )

      #skill-group(
        name: "Development",
        icon: "code",
        skills: (
          "Go",
          "Python",
          "PowerShell",
        )
      )

      #skill-group(
        name: "Infrastructure",
        icon: "cloud",
        icon-solid: true,
        skills: (
          "Azure",
          "Pulumi",
          "Terraform",
          "Ansible",
          "Packer",
          "Tailscale",
          "Hybrid Cloud",
        )
      )

      #skill-group(
        name: "Containers & Friends",
        icon: "cubes",
        skills: (
          "Kubernetes",
          "Helm",
          "Docker",
          "K8s Operator Development"
        )
      )

      #skill-group(
        name: "Monitoring",
        icon: "magnifying-glass-chart",
        skills: (
          "Grafana",
          "Loki",
          "Prometheus",
          "OpenTelemetry",
          "Azure Monitor",
          "Elastic Stack",
          "Opsgenie",
        )
      )
    ]
  ],

  main-content: [
    #section(title: "Experience")[
      #section-element(
        title: link("https://www.kbtech.co.uk/")[Azure Infrastructure & DevOps Engineer @ K B Tech],
        info: [_17 April 2023 --- 04 December 2025_],
        [
          Part of the DevOps team, automating customer-facing environment deployments to leverage Infrastructure as Code.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "cloud", icon-solid: true, text: [Transformed PowerShell IAC into strong Terraform and Azure solution.]),
            (icon: "cubes", text: [Migrated Elastic stack deployment to Azure Kubernetes Service with Terraform and Helm.]),
            (icon: "building-shield", text: [Secured environments with private networking in Azure and Tailscale.]),
            (icon: "scroll", text: [Introduced Architecture Decision Records to Infrastructure repositories.]),
          ))
        ],
      )

      #section-element(
        title: link("https://www.juriba.com/")[DevOps Analyst @ Juriba Limited],
        info: [_27 September 2021 --- 14 April 2023_],
        [
          Transitioned multiple self-hosted products into SaaS solutions, constructing infrastructure and software deployment pipelines for end-to-end automation.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "cloud", icon-solid: true, text: [Architected and automated traditional products to cloud solutions through IAC with Azure, Pulumi, and Ansible.]),
            (icon: "magnifying-glass-chart", text: [Applied extensive monitoring across our tech stack through Grafana, Opsgenie and Pulumi.]),
            (icon: "shield-halved", text: [Enforced strong security policies and accurate cost reporting via Azure Policy.]),
            (icon: "code-compare", text: [Streamlined developer workflows with CI/CD using Azure DevOps and GitHub.]),
            (icon: "github", text: [Migrated DevOps tooling from Azure DevOps to GitHub.]),
          ))
        ],
      )

      #section-element(
        title: link("https://www.mortgagesforbusiness.co.uk/")[Infrastructure Engineer @ Property Business Group],
        info: [_27 August 2019 --- 24 September 2021_],
        [
          Managed on-site, hybrid and Azure Cloud networks across three sites.
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "network-wired", text: [Instrumented new architecture to allow for remote working with Checkpoint VPN.]),
            (icon: "desktop", text: [Implemented an automated desktop deployment solution developed with PowerShell.]),
          ))
        ],
      )

    ]

    #section(title: "Projects")[
      #section-element-advanced(
        title: link("https://github.com/RicochetStudios/aurora")[Aurora],
        icon: fa-icon("gamepad"),
        [
          #set text(size: sizes.text-s2)
          Video game server orchestration with Kubernetes.

          Bringing dedicated video game server hosting to Kubernetes developing my own operator; automating and simplifying the life-cycle of video game servers.
        ]
      )
    ]

    #section(title: "Education")[
      #section-element-advanced(
        title: link("https://www.northkent.ac.uk/")[North Kent College],
        info-top-left: "2018",
        info-top-right: "Kent, United Kingdom",
        [
          #set text(size: sizes.text-s2)
          BTEC Level 3 Information Technology Diploma --- Pass Pass Pass (PPP)
          #icon-list((
            (icon: "graduation-cap", text: [Relevant courses: Data Structures, Algorithms, Web Application Development, Computer Networks, Operating Systems, Databases & Information Systems]),
          ))
        ],
      )
    ]

    #section(title: "References")[
      #section-element-advanced(
        title: "Andrew Bell",
        info-top-left: "Juriba",
        info-top-right: "Line Manager",
        [
          #set text(size: sizes.text-s2)
          DevOps Manager at Juriba
          #icon-list((
            (icon: "envelope", icon-solid: true, text: link("mailto:andrew.bell@juriba.com")[andrew.bell\@juriba.com]),
          ))
        ],
      )
      #section-element-advanced(
        title: "Paul Kemp",
        info-top-left: "K B Tech",
        info-top-right: "Line Manager",
        [
          #set text(size: sizes.text-s2)
          DevOps Manager and Director at K B Tech
          #icon-list((
            (icon: "envelope", icon-solid: true, text: link("mailto:paul.kemp@kbtech.co.uk")[paul.kemp\@kbtech.co.uk]),
          ))
        ],
      )
    ]
  ],
)
