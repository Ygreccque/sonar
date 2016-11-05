import unittest

import functions as f


class TestApp(unittest.TestCase):


    def test_app1(self):
        self.assertEqual(5, f.test1(2,2))


    def test_app2(self):
        self.assertEqual(1, f.test2(2,2))

    def test_app3(self):
        self.assertEqual(8, f.test3(2,4))
