\include "doremi.ly"

\score {                                                                                                                                                                                       
  \new Staff {                                                                                                                                                                                 
    \set-do g                                                                                                                                                                                  
    \doremi g {                                                                                                                                                                                
      la4 ti do re mi fa so si la2 mi la1                                                                                                                                                      
    }                                                                                                                                                                                          
    \doremi-modal g {                                                                                                                                                                          
      la4 ti do re mi fa so \once \set Staff.autoAccidentals = \default-accidental-rule si la2 mi la1                                                                                                    }
    \doremi g {                                                                                                                                                                                
      do4 re mi fa so la te ti do2 so do1                                                                                                                                                      
    }                                                                                                                                                                                          
  }                                                                                                                                                                                            
}  
