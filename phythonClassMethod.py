# @classmethod vs @staticmethod vs "plain" 

class MyClass:
    def plainmethod(self):
        """
        Instance methods need a class instance and
        can access the instance through `self`.
        """
        return 'instance method called here, Okay!!!', self

    @classmethod
    def classmethod(cls):
        """
        Class methods don't need a class instance.
        They can't access the instance (self) but
        they have access to the class itself via `cls`.
        """
        return 'class method called here, Okay!!!', cls

    @staticmethod
    def staticmethod():
        """
        Static methods don't have access to `cls` or `self`.
        They work like regular functions but belong to
        the class's namespace.
        """
        return 'static method called here, Okay!!!'

obj = MyClass()
print(obj.plainmethod())
print(obj.classmethod())
print(obj.staticmethod())
print(MyClass.classmethod())
print(MyClass.staticmethod())

