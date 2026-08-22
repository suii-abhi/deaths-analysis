import pandas as pd

# Load original data
df = pd.read_csv('annual-number-of-deaths-by-cause.csv')

# Select only cardiovascular column and filter
df = df[['Entity', 'Code', 'Year', 'Deaths - Cardiovascular diseases - Sex: Both - Age: All Ages (Number)']]

# Remove rows with missing values
df = df.dropna()

# Filter to years 2015 and later
df = df[df['Year'] >= 2015]

# Save cleaned data
df.to_csv('cardio_death.csv', index=False)
print(f"✅ Cleaned data saved! Shape: {df.shape}")