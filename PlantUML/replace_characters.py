def replace_non_space_newline(input_file, output_file):
    with open(input_file, "r", encoding="utf-8") as file:
        content = file.read()

    content = ''.join('F' if char not in [' ', '\n'] else char for char in content)
    content = ''.join('0' if char in [' '] else char for char in content)
    
    new_content = "@startsalt\n"
    new_content += "{\n"
    new_content += "<<folder\n"
    new_content += content
    new_content += ">>\n"
    new_content += "}\n"
    new_content += "@endsalt"


    with open(output_file, "w", encoding="utf-8") as file:
        file.write(new_content)

if __name__ == "__main__":
    input_file = "input.txt"
    output_file = "output.txt"
    replace_non_space_newline(input_file, output_file)
    print(f"Substituição concluída. Verifique o arquivo {output_file} para o resultado.")