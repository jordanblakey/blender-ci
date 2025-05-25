from unittest import TestCase

import bpy
from src.scene import get_scene


class TestScene(TestCase):
    def test_get_scene(self):
        scene = get_scene()
        self.assertIsInstance(scene, bpy.types.Scene, "it should get the scene")
