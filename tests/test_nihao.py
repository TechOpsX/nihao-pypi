# -*- coding: utf-8 -*-
"""Test ApiGW"""
from nihao_pypi.nihao import nihao_pypi


def test_nihao():
    assert nihao_pypi() == '你好Pypi'
