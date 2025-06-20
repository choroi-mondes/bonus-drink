Option Explicit

Sub getTotalBottle()
  
  Dim keepDrink As Integer: keepDrink = 100
  Dim cashBottle As Integer: cashBottle = 0
  Dim totalDrank As Integer: totalDrank = 0
  
  Dim i As Integer: i = 0
  Dim j As Integer: j = 0
  
  Dim aSheet As Worksheet: Set aSheet = ActiveSheet
  Dim wSheet As Worksheet: Set wSheet = aSheet
  
  Dim nRow As Integer: nRow = 1
  Dim nCol As Integer: nCol = 1
  
  
  Do While keepDrink > 0
    keepDrink = keepDrink - 1
    cashBottle = cashBottle + 1
    
    If cashBottle = 3 Then
      keepDrink = keepDrink + 1
      cashBottle = 0
    End If
    
    totalDrank = totalDrank + 1
  Loop
  
  aSheet.Cells(1, 1).Value = "keep"
  aSheet.Cells(2, 1).Value = "total"
  aSheet.Cells(3, 1).Value = "cash"
  aSheet.Cells(1, 2).Value = keepDrink
  aSheet.Cells(2, 2).Value = totalDrank
  aSheet.Cells(3, 2).Value = cashBottle
  aSheet.Cells(1, 1).Select


End Sub

