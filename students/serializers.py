from rest_framework import serializers
from .models import Student


class StudentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Student
        fields = ["id", "name", "email", "age", "course", "enrolled_date"]
        read_only_fields = ["id", "enrolled_date"]

    def validate_age(self, value):
        if value < 16:
            raise serializers.ValidationError(
                "Student must be at least 16 years old."
            )
        return value
