
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Accidental rules %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

default-accidental-rule = #`(Staff ,(make-accidental-rule 'same-octave 0))

hide-altered-sixth-accidental-rule = #`(Staff ,(lambda (_1 _2 _3 _4) '(#f . #f)))

%%%$
% The above rule is misnamed: it hides all accidentals.
% The following accidental rule will actually hide ONLY altered sixths.
% The problem with it is that it sometimes leads to accidentals being DISPLAYED that should be.
%%%%
%       #`(Staff ,(lambda (context pitch barnum position) 
%                      (let ((n (ly:pitch-notename pitch))
%                            (a (ly:pitch-alteration pitch))
%                            (k (ly:pitch-notename ut)))
%                        (if (or (= 3 (- n k))
%                                (= -4 (- n k)))
%                            '(#f . #f)      
%                          (if (equal? a 0)
%                              '(#f . #f)    
%                            '(#f . #t)))))) 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Functions for raising 6-fa in minor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

modalize-music = 
#(define-music-function (parser location m) 
  (ly:music?)
  (modalize m))

#(define (modalize music)
  (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property! music 'elements (map (lambda (x) (modalize x)) es)))
     (if (ly:music? e)
         (ly:music-set-property! music 'element (modalize e)))
     (if (ly:pitch? p)
         (begin
           (set! p (modalize-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))

#(define (modalize-pitch p)
  (let ((n (ly:pitch-notename p))
        (o (ly:pitch-octave p))
        (a (ly:pitch-alteration p))
        (k (ly:pitch-notename ut)))
        (ly:message (ly:number->string (- n k)))
        (if (or (= 3 (- n k))
                (= -4 (- n k)))
          (set! a (+ a (/ 1 2))))
        (ly:make-pitch o n a)))
    



%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Pitch names %%%%%
%%%%%%%%%%%%%%%%%%%%%%%

sevenShapePitchNames = #`(
  (cf . ,(ly:make-pitch -1 0 FLAT))
  (c  . ,(ly:make-pitch -1 0 NATURAL))
  (cs . ,(ly:make-pitch -1 0 SHARP))

  (df . ,(ly:make-pitch -1 1 FLAT))
  (d  . ,(ly:make-pitch -1 1 NATURAL))
  (ds . ,(ly:make-pitch -1 1 SHARP))

  (ef . ,(ly:make-pitch -1 2 FLAT))
  (e  . ,(ly:make-pitch -1 2 NATURAL))
  (es . ,(ly:make-pitch -1 2 SHARP))

  (ff . ,(ly:make-pitch -1 3 FLAT))
  (f  . ,(ly:make-pitch -1 3 NATURAL))
  (fs . ,(ly:make-pitch -1 3 SHARP))

  (gf . ,(ly:make-pitch -1 4 FLAT))
  (g  . ,(ly:make-pitch -1 4 NATURAL))
  (gs . ,(ly:make-pitch -1 4 SHARP))

  (af . ,(ly:make-pitch -1 5 FLAT))
  (a  . ,(ly:make-pitch -1 5 NATURAL))
  (as . ,(ly:make-pitch -1 5 SHARP))

  (bf . ,(ly:make-pitch -1 6 FLAT))
  (b  . ,(ly:make-pitch -1 6 NATURAL))
  (bs . ,(ly:make-pitch -1 6 SHARP))

  (do . ,(ly:make-pitch -1 0 NATURAL))
  (di . ,(ly:make-pitch -1 0 SHARP))

  (ra . ,(ly:make-pitch -1 1 FLAT))
  (re . ,(ly:make-pitch -1 1 NATURAL))
  (ri . ,(ly:make-pitch -1 1 SHARP))

  (ma . ,(ly:make-pitch -1 2 FLAT))
  (me . ,(ly:make-pitch -1 2 FLAT))
  (mi . ,(ly:make-pitch -1 2 NATURAL))

  (fa . ,(ly:make-pitch -1 3 NATURAL))
  (fi . ,(ly:make-pitch -1 3 SHARP))

  (se . ,(ly:make-pitch -1 4 FLAT))
  (so . ,(ly:make-pitch -1 4 NATURAL))
  (si . ,(ly:make-pitch -1 4 SHARP))

  (le . ,(ly:make-pitch -1 5 FLAT))
  (lo . ,(ly:make-pitch -1 5 FLAT))
  (la . ,(ly:make-pitch -1 5 NATURAL))
  (li . ,(ly:make-pitch -1 5 SHARP))

  (ta . ,(ly:make-pitch -1 6 FLAT))
  (te . ,(ly:make-pitch -1 6 FLAT))
  (ti . ,(ly:make-pitch -1 6 NATURAL))
)

fourShapePitchNames = #`(
  (cf . ,(ly:make-pitch -1 0 FLAT))
  (c  . ,(ly:make-pitch -1 0 NATURAL))
  (cs . ,(ly:make-pitch -1 0 SHARP))

  (df . ,(ly:make-pitch -1 1 FLAT))
  (d  . ,(ly:make-pitch -1 1 NATURAL))
  (ds . ,(ly:make-pitch -1 1 SHARP))

  (ef . ,(ly:make-pitch -1 2 FLAT))
  (e  . ,(ly:make-pitch -1 2 NATURAL))
  (es . ,(ly:make-pitch -1 2 SHARP))

  (ff . ,(ly:make-pitch -1 3 FLAT))
  (f  . ,(ly:make-pitch -1 3 NATURAL))
  (fs . ,(ly:make-pitch -1 3 SHARP))

  (gf . ,(ly:make-pitch -1 4 FLAT))
  (g  . ,(ly:make-pitch -1 4 NATURAL))
  (gs . ,(ly:make-pitch -1 4 SHARP))

  (af . ,(ly:make-pitch -1 5 FLAT))
  (a  . ,(ly:make-pitch -1 5 NATURAL))
  (as . ,(ly:make-pitch -1 5 SHARP))

  (bf . ,(ly:make-pitch -1 6 FLAT))
  (b  . ,(ly:make-pitch -1 6 NATURAL))
  (bs . ,(ly:make-pitch -1 6 SHARP))

  (Fa . ,(ly:make-pitch -1 0 NATURAL))
  (Fi . ,(ly:make-pitch -1 0 SHARP))

  (Se . ,(ly:make-pitch -1 1 FLAT))
  (So . ,(ly:make-pitch -1 1 NATURAL))
  (Si . ,(ly:make-pitch -1 1 SHARP))

  (Le . ,(ly:make-pitch -1 2 FLAT))
  (Lo . ,(ly:make-pitch -1 2 FLAT))
  (La . ,(ly:make-pitch -1 2 NATURAL))
  (Li . ,(ly:make-pitch -1 2 SHARP))

  (fa . ,(ly:make-pitch -1 3 NATURAL))
  (fi . ,(ly:make-pitch -1 3 SHARP))

  (se . ,(ly:make-pitch -1 4 FLAT))
  (so . ,(ly:make-pitch -1 4 NATURAL))
  (si . ,(ly:make-pitch -1 4 SHARP))

  (le . ,(ly:make-pitch -1 5 FLAT))
  (lo . ,(ly:make-pitch -1 5 FLAT))
  (la . ,(ly:make-pitch -1 5 NATURAL))
  (li . ,(ly:make-pitch -1 5 SHARP))

  (ma . ,(ly:make-pitch -1 6 FLAT))
  (me . ,(ly:make-pitch -1 6 FLAT))
  (mi . ,(ly:make-pitch -1 6 NATURAL))
)
