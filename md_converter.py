#!/usr/bin/python3

import sys

def change_to_markdown_format(lines: str):

    occured = 0

    markdown = []
    for line in lines.split("\n"):
        if "+---" in line:
            occured = occured + 1

            # Only remain header line of markdown format
            if occured != 2:
                continue

            table_formatted = line.replace("+", "|")
            markdown.append(table_formatted)
        else:
            markdown.append(line)
    return "\n".join(markdown)


markdown = change_to_markdown_format(sys.stdin.read())
print(markdown)
