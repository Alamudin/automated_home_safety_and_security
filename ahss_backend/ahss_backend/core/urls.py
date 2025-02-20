from django.urls import path, include
from rest_framework import routers
from . import views


router = routers.DefaultRouter()
router.register(r'', views.UserViewSet)


urlpatterns = [
    path('', include(router.urls)),
    # path('<int:pk>/', views.singleUserView),
]
