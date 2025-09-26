## Exercices sur les mesures de Mahler d'un polynômes :
 L'objectif du programme est de montrer expérimentalement le theorème de *Schingle* et le théorème de *Smith* sur la minoration de la mesure de Mahler d'un polynôme .
## Mesure de Mahler d'un pôlynome :
Soit $P\left(x\right)=a_0\prod_{i=1}^{d}\left(x-\alpha_i\right) \in \mathbb{Q}\left[x\right]$ ,le polynôme minimal de $\alpha$ sur $\mathbb{Q}$ et $\log^+|\beta|=max\left\{0,\log|\beta|\right\}$ \\
Le polynôme de Mahler de $\alpha$ (respéctivement du polynôme $P$) est :
$m\left(\alpha\right)=m\left(P\right)=\log|a_0|+\sum_{i=1}^{d}\log^+|\alpha_i| .$

Notre fonction **polmahler** mesure $|a_0| \prod_{i=1}^{d}|\alpha_i| .$ (pour minorer  la mesure de Mahler , on n'a pas besoin du $log$ car c'est une fonction croissante ).

##  Théorème : (Brush $1951$ ,Smyth $1971$)
  Soit $P \in \mathbb{Z}\left[x \right] \backslash \left\{0\right\}$  irréductible et non réciproque
alors $$m\left(P\right) \geq m\left(x^3-x-1\right)=0.28\dots$$
 ### Fonctions utilisées :
 - **polmalher**
 - **polrandom(d,B)** : Elle permet de generer un polynôme aleatoire  de degre $d$ à fonction dans $B$ .
 - **polreciptest(p)**: Elle retourne $0$ si le polynôme **p** est non reciproque et  $1$  sinon. 
 - **demo(n)**: Elle teste sur $n$ polynômes generés aleatoirement le théoreme ci-dessus . Elle retournerait $0$ au cas ou il y aurrait un contre exemple .

## Auteur

Mija Niaina, M1 MAFI 2025
