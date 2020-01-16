from django.shortcuts import render

# Create your views here.
def hello(request):
    print('Hello')
    return render(request, 'app/main.html', {})
