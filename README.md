# Website Update Automation Script

This script automates the process of updating a static website built with Hugo by:

1. Generating the latest version of the site using Hugo
2. Committing and pushing changes to a Git repository
3. Copying the generated site files to a Neocities folder
4. Uploading the updated site to Neocities

## Prerequisites

Ensure you have the following installed on your system:

- Hugo – A static site generator
- Git – For version control
- Neocities CLI – To push updates to Neocities

## Setup

1. Clone this repository:
```
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

2. Open the script (update-website.sh) and modify the following paths to match your setup:
```   
HUGO_DIR="/path/to/your/hugo/project"

GIT_DIR="/path/to/your/git/repository"

NEOCITIES_DIR="/path/to/your/neocities/folder"
```

4. Make the script executable:
```
chmod +x update-website.sh
```

## Usage

To run the script and update your website, execute:
```
./update-website.sh
```

How It Works

1. ### Generate Static Site:
    The script runs hugo to generate the latest version of the website from the Hugo directory.
   
3. ### Push to Git:
- Stages all changes
- Commits with the message "updated site"
- Pushes changes to the Git repository
- 
3. ### Copy Files to Neocities Directory:
    - The generated site files are copied to the Neocities folder.
    - 
4. Deploy to Neocities:
    The script navigates to the Neocities directory and pushes the updated site using the Neocities CLI.

Notes

- Ensure you are logged into Neocities CLI before running the script (neocities login).
- Modify the script if you need additional customizations.
- You can automate this script using a cron job for scheduled deployments.

License

This project is open-source under the MIT License.

