doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else doubleMe x

dobleSmall2 = [x * 2 | x <- [1..100]]

combiTuplas = [ x + y | x <- [1..100], y <- [1..100]]

multiTuplasGuarda = [x * y | x<-[2,5,10], y<-[8,10,11], x*y > 50]

longitud xs = sum [1 | _ <- xs]

borrarLetrasNoMayusculas st = [c | c <- st, c elem ['A'..'Z']]

xxs = [[1..10],[1..10],[1..10]]
borradoImparesSinAplanar = [[x | x <- xs, even x] | xs <- xxs]

-- TUPLAS
-- campos heterogeneos
t1 = (1,"hola")
t2 = (2,"adios",3)
-- t1 y t2 no lo puedes poner en una lista ya que son cosas distintas

myZip  = zip [1..5] (replicate 50 5) -- solo zipea el mismo numero de elementos
myZip2 = zip [1..]  (replicate 50 5) -- lista lazy, solo usara 50

triples = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]]
correctoTriangulo = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^ 2 == c ^ 2]

unzip = zip [1..20] ["1", "dos", "tres", "cuatro"] 