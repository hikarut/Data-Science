import pandas as pd
import seaborn as sns
import japanize_matplotlib
import matplotlib.pyplot as plt
from wordcloud import WordCloud

print(1)
print(2)

text_pd = pd.read_csv('notebooks/text/sample.txt').values
text_array = [*map(lambda x: x[0], text_pd)]
text = " ".join(text_array)
print(text)