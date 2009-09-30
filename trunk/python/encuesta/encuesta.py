#!/usr/bin/python
# -*- coding: iso-8859-15 -*-

import sets

class Cursos(set):
  """ Cursos. """

  def esVacio(self):
    """ Decide si hay cursos.
    >>> Cursos().esVacio()
    True
    >>> Cursos().ag("repostería").esVacio()
    False
    """
    return len(self)==0

  def ag(self, nombreCurso):
    """ Agrega un curso
    (tests en esVacio)
    """
    self.add(nombreCurso)
    return self

class Profes(set):
  """ Profes """
  pass


class Encuesta:
  """ Combina cursos, alumnos y profesores
  """

  cursos = Cursos()
  profes = Profes()
  
  def __init__(self):
    """ Crea una encuesta vacia
    >>> Encuesta().esVacia()
    True
    """

  def esVacia(self):
    """ Verifica si una encuesta es vacía
    >>> Encuesta().agCurso("reposteria").esVacia()
    False
    """
    # Suficiente con chequear que cursos es vacío, porque
    # no se permiten profesores o alumnos si no hay cursos
    return self.cursos.esVacio()

  def agCurso(self,nombreCurso):
    """ Agrega un curso vacío, sin profesor ni alumnos
    >>> Encuesta().agCurso("repostería").profes
    Profes([])
    >>> e = Encuesta().agCurso("repostería")
    >>> e.profesCurso("reposteria")
    Profes([])
    """
    self.cursos.ag(nombreCurso)
    return self

    

if __name__ == "__main__":
  import doctest
  doctest.testmod()

# vim: nu ts=2 sw=2 et
