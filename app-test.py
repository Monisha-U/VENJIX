import app
import unittest
import pip._vendor.requests 

class TestAPI(unittest.TestCase):
    
    data = {
        "username" : "test data",
        "password" : "testpassword"
    }
    URL = "http://127.0.0.1:5000/createlogin"
    DOC_URL = "http://127.0.0.1:5000/createdoctor"
    def setUp(self):
        self.app = app.app.test_client()
        self.app.testing = True


    def test_getdonors_status_code(self):
        response = self.app.get('/getdonors')
        self.assertEqual(response.status_code, 200)
        print("Test Get Donors Api Call")
        
    def test_getdonors_noOfRows_not_null(self):
        response = self.app.get('/getdonors')
        self.assertTrue(response)
        print("Test Get Donors Api Call With Returned Rows")

    def test_getdoctors_noOfRows_not_null(self):
        response = self.app.get('/getdoctors')
        self.assertTrue(response)
        print("Test Get Doctors Api Call With Returned Rows") 

    def test_postdoctors(self):
        response = pip._vendor.requests.post(self.URL,json=self.data)
        self.assertEqual(response.status_code, 200) 
        print("Test Post Doctors Api Call ")

    def test_getreceiver_status_code(self):
        response = self.app.get('/getreceiver')
        self.assertEqual(response.status_code, 200)  
        print("Test Get Receiver Api Call")

    def test_getreceiver_noOfRows_not_null(self):
        response = self.app.get('/getreceiver')
        self.assertTrue(response)   
        print("Test Get Receiver Api Call With Returned Rows") 

   
if __name__ == '__main__':
    unittest.main()