import requests
from bs4 import BeautifulSoup

class play_so_xo:
    def get_so_xo(target_query):
        # target_query : 13-05-2024;
        # Bước 1: Gửi yêu cầu HTTP để lấy HTML của trang web
        baseurl = 'https://www.kqxs.vn/?yesterday=true&date='
        url_request = baseurl + target_query
        response = requests.get(url_request)

        # Kiểm tra xem yêu cầu có thành công hay không
        if response.status_code == 200:
            html_content = response.text
            
            # Bước 2: Sử dụng BeautifulSoup để phân tích HTML
            soup = BeautifulSoup(html_content, 'html.parser')
            
            # Bước 3: Tìm thẻ <span> với class "number" và lấy giá trị từ thuộc tính data-value
            span_tag = soup.find('span', class_='number', attrs={'data-prize': '1'})
            
            if span_tag:
                data_value = span_tag['data-value']
                print(f"Giá trị sổ số {target_query} là: {data_value}")
                return data_value
            else:
                print(f"Không tìm thấy Kết quả sổ xố ngày: ${target_query} (<span> với class 'number' và thuộc tính 'data-prize' là '1')")
                return False
        else:
            print(f"Failed to retrieve the webpage. Status code: {response.status_code}")

        