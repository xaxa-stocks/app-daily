from crawler.daily_crawler import Crawler

py_crawler = Crawler()

fiis_list = py_crawler.get_fii_list()

py_crawler.add_price_data_to_table(fiis_list,"daily_info")



