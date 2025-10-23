# doc2md

A simple command-line tool to convert DOCX files to Markdown format.

## Features

- Converts all DOCX files in the current directory to Markdown
- Organizes output into numbered folders
- Requires pandoc for conversion

## Installation

### One-line install

```bash
curl -fsSL https://raw.githubusercontent.com/navidgs/doc2md/main/install.sh | bash
```

### Manual installation

1. Download the script:
```bash
curl -fsSL https://raw.githubusercontent.com/navidgs/doc2md/main/doc2md -o ~/bin/doc2md
chmod +x ~/bin/doc2md
```

2. Add to your PATH (if not already added):
```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## Prerequisites

- [pandoc](https://pandoc.org/) - Install with: `brew install pandoc`

## Usage

```bash
doc2md <base-name>
```

### Example

```bash
doc2md ali-baba
```

This will:
1. Find all `.docx` files in the current directory
2. Convert each to Markdown
3. Create numbered folders in `output/` directory (e.g., `ali-baba-001/`, `ali-baba-002/`, etc.)
4. Save the converted Markdown files in their respective folders

## Output Structure

```
output/
├── ali-baba-001/
│   └── ali-baba-001.md
├── ali-baba-002/
│   └── ali-baba-002.md
└── ...
```
