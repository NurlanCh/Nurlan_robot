""" a=10          #variable globale
b=20          #variable globale
def Addition ():
   print(a+b)

Addition()
Addition()
Addition()
Addition() """

""" def Addition (a, b,):
    print (a+b)
    # on a une message d'erreur

Addition(3,4)
# on a 7 dans la console
Addition(5,12)
Addition(8,56)
Addition(33,44)
Addition(38,74) """

def Addition (a,b):
    return a+b
resultat = Addition(5,10)
produit=resultat*10
print(resultat)
print(produit)
#print (Addition(5,10))