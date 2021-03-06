library(dplyr)
library(tibble)
library(kableExtra)

my_table <- tribble(
  ~ `Module title`, ~ Type, ~ `Description of module content`, 
  ~ `Objectives (After taking the module, the trainee can ...)`, 
  ~ `Video length (min.)`,  ~ `Extra educational materials`,
  
# Module 1  
  "Separating data recording and analysis", "Principles",
    "Many biomedical laboratories use spreadsheets, with embedded formulas, 
      to both record and analyze experimental data. This practice impedes transparency
      and reproducibility of both data recording and data analysis. In this module, we 
      will describe this common practice and will outline alternative
      approaches that separate the steps of data recording and data analysis.", 
    "\\tabitem Explain the difference between data recording and data analysis 

     \\tabitem Understand why collecting data on spreadsheets with embedded formulas
        impedes reproducibility 

      \\tabitem List alternative approaches to 
        improve reproducibility", 
    "15", 
    "\\tabitem Discussion questions about data recording approaches the trainee has 
      previously used in research projects and the benefits
      and limitations for data transparency and 
      reproducibility 

    \\tabitem Short audio recording of two Co-Is giving their
      answers",
  
# Module 2  
  "Principles and power of structured data formats", "Principles",
    "The format in which experimental data is recorded can have a large influence
      on how easy and likely it is to implement reproducibility tools in later stages of
      the research workflow. Recording data in a 'structured'
      format brings many benefits.
      In this module, we will explain what makes a dataset 'structured' and
      why this format is a powerful tool for reproducible research.", 
    "\\tabitem List the characteristics of a structured data format 

      \\tabitem Describe benefits for research transparency and reproducibility 

      \\tabitem Outline other benefits of using a structured format when recording data", 
    "10", 
    "\\tabitem Applied exercise: For example datasets, specify whether each is in a 
      structured data format and, if not, draft a structured
      version 

    \\tabitem Video walking trainees 
      through solutions to the applied exercise",

# Module 3
  "The 'tidy' data format: an implementation of a structured data format", "Implementation",
  "The 'tidy' data format is an implementation of a structured data format popular
  among statisticians and data scientists. By consistently 
  using this data format, researchers can combine
  simple, generalizable tools to perform complex tasks in data processing, 
  analysis, and visualization. We will explain what characteristics determine
  if a dataset is 'tidy' and how use of the 'tidy' implementation of a structure 
  data format can improve the ease and efficiency
  of 'Team Science'.", 
  "\\tabitem List characteristics defining the  
    the 'tidy' structured data format 

  \\tabitem Explain the difference between the a structured data format (general 
    concept) and the 'tidy' data format (one popular implementation)", 
  "15", 
  "\\tabitem Quiz questions: For example datasets, correctly identify which of the 'tidy'
  data principles the dataset has or lacks 

  \\tabitem Video explaining quiz solutions",

# Module 4
  "Designing templates for tidy data collection", "Implementation",
    "This module will move from the principles of the 'tidy' data format to the 
      practical details of designing a 'tidy' data format to use when collecting 
      experimental data. We will describe common issues that prevent 
      biomedical research datasets from being 'tidy' and show how these issues
      can be avoided.
      We will also provide rubrics and a checklist to help determine if a 
      data collection template complies with a 'tidy' format.", 
    "\\tabitem Identify characteristics that keep a dataset from being 'tidy'
      
      \\tabitem Convert data from an 'untidy' to a 'tidy' format", 
    "20", 
    "\\tabitem Applied exercise: For an 'untidy' dataset, explain why it is not 'tidy'
    and convert to a 'tidy' format

  \\tabitem Video providing a detailed solution to the applied exercise",

# Module 5
  "Example: Creating a template for 'tidy' data collection", "Example",
    "We will walk through an example of creating a template to collect
      data in a 'tidy' format for a laboratory-based research project, based on 
      a research project on drug efficacy in 
      murine tuberculosis models. We will show the initial 'untidy' format 
      for data recording and show how we converted it to a 'tidy' format.
      Finally, we will show how the data can then easily be 
      analyzed and visualized using reproducible tools.", 
    "\\tabitem Understand how the principles of 'tidy' data can be applied 
      for a real, complex research project;

      \\tabitem List advantages of the 'tidy' data format for the example project", 
    "15", 
    "\\tabitem Discussion questions, including listing examples of experiences
    collecting data in an 'untidy' format

    \\tabitem Short audio recording of two Co-Is giving their
      answers", 

# Module 6
  "Power of using a single structured 'Project' directory for storing and tracking research project files", "Principles",
    "To improve the computational reproducibility of a research project, researchers
      can use a single 'Project' directory to collectively store 
      all research data, meta-data, pre-processing code,
      and research products (e.g., paper drafts, 
      figures). We will explain how this practice 
      improves the reproducibility and 
      list some of the common components and subdirectories to include
      in the structure of a 'Project' directory, including subdirectories for raw and
      pre-processed experimental data.", 
    "\\tabitem Describe a 'Project' directory, including common components and subdirectories 

      \\tabitem List how a single 'Project' directory
      improves reproducibility", 
    "20", 
    "\\tabitem Quiz questions: What is a structured
      'Project' directory and what are its benefits
      to reproducibility 

      \\tabitem Video with detailed discussion of quiz solutions",

# Module 7
  "Creating 'Project' templates", "Implementation",
    "Researchers can use RStudio's 'Projects' can facilitate collecting research 
      files in a single, structured directory, with the added
      benefit of easy use of version control. 
      Researchers can gain even more benefits by consistently structuring all their 'Project' 
      directories. We will demonstrate 
      how to implement structured project directories through RStudio,
      as well as how RStudio enables the creation of a 'Project' for initializing
      consistently-structured directories for all of a research group's projects.", 
    "\\tabitem Be able to create a structured `Project` directory within RStudio

     \\tabitem Understand how RStudio can be used to create 'Project' templates", 
    "25", 
    "\\tabitem Discussion questions on how the trainee has saved and
      tracked research project files for previous research projects and 
      related barriers to reproducibility

    \\tabitem Short audio recording of two Co-Is discussing their answers",

# Module 8
  "Example: Creating a 'Project' template", "Example",
    "We will walk through a real example, based on the experiences of
      one of our Co-Is, of establishing the format 
      for a research group's 'Project' template, creating that template using RStudio,
      and initializing a new research project directory using the created template.
      This example will be from a laboratory-based research group that studies the efficacy of 
      tuberculosis drugs in a murine model.", 
    "\\tabitem Create a 'Project' template in RStudio to initialize 
      consistently-formatted 'Project' directories
  
      \\tabitem Initialize a new 'Project' directory using this template", 
    "15", 
    "\\tabitem Applied exercise: Create and save a 'Project' 
      template that meets specifications provided for an example research group 

     \\tabitem Video demonstrating a detailed solution",

# Module 9
  "Harnessing version control for transparent data recording", "Principles",
    "As a research project progresses, a typical practice in many experimental 
      research groups is to save new versions of files (e.g., 'draft1.doc', 'draft2.doc'),
      so that changes can be reverted. However, this practice 
      leads to an explosion of files, and it becomes hard to track 
      which files represent the 'current' state of a project. Version control allows
      researchers to edit and change research project files more cleanly, while maintaining
      the power to 'backtrack' to previous versions,
      messages included to explain changes.
      We will explain what version
      control is and how it can be used in research projects to improve the transparency 
      and reproducibility of research, particularly for data recording.", 
    "\\tabitem Describe version control  

      \\tabitem Explain how version control can be used to improve reproducibility 
      for data recording", 
    "10", 
    "\\tabitem Discussion questions, including discussion of how the trainee has 
      managed evolving research project files in previous projects and related barriers
      to reproducibility 

      \\tabitem Short audio recording of two Co-Is giving their
      own answers",

# Module 10
  "Enhance the reproducibility of collaborative research with version control platforms", "Principles",
    "Once a researcher has learned to use \\textit{git} on their own 
      computer for local version control, they can begin using version control 
      platforms (e.g., \\textit{GitLab}, \\textit{GitHub}) to collaborate with others under version control. 
      We will describe 
      how a research team can benefit from using a version control platform 
      to work collaboratively. ", 
    "\\tabitem List benefits of using a version control platform to collaborate
      on research projects, 
      particularly for reproducibility 

     \\tabitem Describe the difference between version control (e.g., \\textit{git}) and 
      a version control platform (e.g., \\textit{GitLab})", 
    "10", 
    "\\tabitem Discussion questions: Describe how past research projects 
    shared files without using version control

    \\tabitem Short audio file with two Co-Is discussing their answers", 

# Module 11
  "Using git and GitLab to implement version control", "Implementation",
  "For many years, use of version control required use of the command line,
  limiting its accessibility to researchers with limited programming experience.
  However, graphical interfaces have removed this barrier, and RStudio has 
  particularly user-friendly tools for implementing version control.
  In this module, we will show how to use 
   \\textit{git} through RStudio's user-friendly interface and how to connect from a local
  computer to \\textit{GitLab} through RStudio.", 
  "\\tabitem Understand how to set up and use \\textit{git} through RStudio's interface 

  \\tabitem Understand how to connect with \\textit{GitLab} through RStudio to collaborate on  
  research projects while maintaining version control", 
  "20", 
  "\\tabitem Applied exercise: Use RStudio to 
  initialize \\textit{git} version control for a directory 
  and to make several tracked changes. Create a matching \\textit{GitLab} repository and use
  RStudio to push local changes to this \\textit{GitLab} version of the directory

  \\tabitem Video 
  walking trainees through a detailed solution"
  ) %>% 
  mutate(`Module title` = cell_spec(`Module title`, format = "latex",
                                    color = factor(Type,
                                                   c("Principles",
                                                     "Implementation", 
                                                      "Example"),
                                                   c("blue", "red", "black")),
                                    bold = TRUE)) %>% 
  select(-Type) %>% 
  kable("latex", booktabs = TRUE, longtable = TRUE, escape = FALSE,
                  caption = "\\label{tab:content_one} Modules for the first sequence, \\textbf{'Improving the Reproducibility of Experimental Data Recording'}. The color of each module's title indicates whether the module focuses on \\textbf{Principles} (blue), \\textbf{Implementation} (red), or \\textbf{Case study examples} (black). This table is continued over several pages.") %>% 
  kable_styling(latex_options = c("striped", "repeat_header", "scale_down"), 
                font_size = 10) %>% 
  column_spec(1, bold = TRUE, width = "10em") %>% 
  column_spec(2, width = "28em") %>% 
  column_spec(3, width = "14em") %>% 
  column_spec(4, width = "3em") %>% 
  column_spec(5, width = "14em") %>% 
  landscape()

fileConn <- file("tables/module_content_data_recording.tex")
writeLines(my_table, fileConn)
close(fileConn)
