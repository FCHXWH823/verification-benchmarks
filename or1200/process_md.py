import pandas as pd

# Read the uploaded CSV
csv_path = './properties.csv'
df = pd.read_csv(csv_path)

# Prepare the output TCL file
tcl_path = './properties.tcl'
with open(tcl_path, 'w', encoding='utf-8') as f:
    for _, row in df.iterrows():
        prop_id = row['ID']
        # Remove all backslashes from the assertion
        assertion = row['Assertion'].replace('\\', '')
        # Write the TCL command
        f.write(f'assert -name or1200_{prop_id} {assertion}\n')
