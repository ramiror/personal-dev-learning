#!/usr/bin/python
class Encuesta:

  cursos = []
  profes = {}

  def agCurso(self, nombreCurso):
    """ Agrega un curso
    >>> Encuesta().agCurso('tortas').cursos
    ['tortas']
    """
    self.cursos.append(nombreCurso)
    return self

  # def agProfe(self, nombreCurso, nombreProfe):
  #   """ Agrega un profe a un curso
  #   >>> e = Encuesta().agCurso('tortas')
  #   >>> e.agProfe('tortas', 'Ricardo Darin').profeDe('tortas')
  #   """
  #     self.profes[nombreCurso] = nombreProfe
  #     return self

  def profesDe(self, nombreCurso):
    """ Devuelve los profes de un curso. Pueden ser muchos
    """
      return profes[nombreCurso]
  

import doctest
doctest.testmod()

# vim: ts=2 sw=2 et si nu
