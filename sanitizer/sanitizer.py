from crawler.sanitizer import Sanitizer

py_sanitizer = Sanitizer()

fiis_list = py_sanitizer.get_fii_list()

py_sanitizer.retrieve_fii(fiis_list)