---
description: Generate GitHub profile report for any username
---

Generate a comprehensive GitHub profile report for the user $ARGUMENTS.

Steps:
1. Use `gh repo list $ARGUMENTS --limit 100` to list all repositories
2. Filter out forked repos (keep only non-fork repos)
3. Clone all non-fork repos to current directory one by one using `gh repo clone -- --depth 1`
4. For each repo, get metadata using `gh repo view $ARGUMENTS/repo-name --json name,description,primaryLanguage,updatedAt -q '.'`
5. Categorize projects by:
   - Technology (language): TypeScript, JavaScript, Python, Java, etc.
   - Type: AI/ML, Web App, Backend, Mobile, Visualizer, Tutorial, etc.
6. Generate a markdown report with:
   - Profile overview with total repo count
   - Repository summary table with columns: Repository, Primary Language, Last Updated, Description
   - Technology stack breakdown as a table with language counts and percentages
   - Project categories with descriptions
   - Notable projects highlights (most recent and most comprehensive)
   - Activity timeline by year
   - Skills & expertise summary
   - Summary section with key findings
7. Save the report as `$ARGUMENTS_Report.md` in current directory

Report format requirements:
- Use proper markdown tables with |
- Use headers ## for major sections, ### for subsections
- Use bullet points for lists
- Include a summary at the end with key findings
- Mark any empty/unspecified fields clearly

Important notes:
- Clone repos one by one to avoid timeouts (use 60-90s timeout per repo)
- Skip any repos that fail to clone and continue
- Handle repos with no description gracefully
- Handle repos with null/empty primary language
- Keep all cloned repos after generating the report

### Examples:
```
/gh-report tech1savvy
/gh-report torvalds
/gh-report facebook
```
