

function propiedadesMatrices=creacionMatrices()
  
   sizeMatriz=input('Ingrese el tamaño de la Matriz de tipo Matrix: ');
    
    matriz01=eye(sizeMatriz);
  
  disp('')  
  disp('=============Representación Gráfica Matricial==========')
  disp(matriz01)
  
    disp('')  
  disp('=============Tamaño Matricial==========')
  disp(size(matriz01))
  
    disp('')  
  disp('=============Valores Máximo por Columna==========')
  disp(max(matriz01))

      disp('')  
  disp('=============Valores Minimos por Columna==========')
  disp(min(matriz01))
  
      disp('')  
  disp('=============Elementos de la Diagonal de la Matriz==========')
  disp(diag(matriz01))
  
    
  
endfunction  