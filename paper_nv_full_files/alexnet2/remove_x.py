def clean_weights(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            line = line.strip()
            if 'x' in line.lower():
                outfile.write("00000000\n")
            else:
                outfile.write(f"{line}\n")

# Run the function
clean_weights("dmem_alexnet2.mem", "dmem_alexnet2_rem_x.mem")

