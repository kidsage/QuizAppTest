import random
from rest_framework.response import Response
# 함수형 view 사용 시 쓰는 decorator
from rest_framework.decorators import api_view
from .models import Quiz
from .serializers import QuizSerializer

# Create your views here.
@api_view(['GET'])
def helloAPI(request):
    return Response('Hello World!')

@api_view(['GET'])
def randomQuiz(request, id):
    totalQuizs = Quiz.objects.all()
    randomQuizs = random.sample(list(totalQuizs), id)
    serializer = QuizSerializer(randomQuizs, many=True)

    return Response(serializer.data)