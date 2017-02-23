files = header.html\
        outline.md\
        footer.html

index.html: ${files}
    cat > $@ $^
