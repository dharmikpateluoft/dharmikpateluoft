<TeXmacs|2.1.1>

<style|<tuple|article|std-frame>>

<\body>
  <doc-data|<doc-title|Nonlinear Optics: A Personal
  Exploration>|<doc-author|<author-data|<author-name|Dharmik Patel>>>>

  These notes are based on Robert Boyd's <with|font-shape|italic|Nonlinear
  Optics> (2020).\ 

  \;

  <section|The nonlinear optical susceptibility>

  <subsection|Fundamentals>

  Nonlinear optics concerns itself with the modification of the optical
  properties of a system due to the presence of electromagnetic radiation
  (typically laser-produced, considering you need a certain intensity for
  these modifications to happen). The nonlinearity comes from the fact that
  the material system has a particular response to an applied field that
  behaves nonlinearly with respect to the strength of the field. Nonlinear
  optical phenomena occur as a result of this behaviour. <no-indent*>

  \;

  <\framed>
    <\example*>
      <with|font-shape|italic|Second-Harmonic Generation>

      \;

      <yes-indent>A nonlinear optical process where an incoming
      \<#2018\>pump\<#2019\> wave \U typically a laser \U \ that is incident
      on a material with \<chi\><rsup|(2)> nonlinear response generates a
      wave with twice the optical frequency (equivalently, with half the
      incoming wavelength). This is why this process is also often called
      <with|font-shape|italic|frequency doubling>. The atomic response scales
      quadratically \U hence the (2) \U with respect to the strength of the
      applied optical field (the pump wave). So, the intensity of the
      generated light at the second-harmonic frequency increases like the
      square of the intensity of the pump field.
    </example*>
  </framed>

  <no-indent><yes-indent>Recall that the polarization
  <math|<wide|P|~><around*|(|t|)>> of a material is simply the dipole moment
  per unit volume, and is dependent on the strength (magnitude) of an applied
  optical field, <math|<wide|E|~><around*|(|t|)>>. In the case of linear
  optics, the polarization induced by this field is linearly dependent on the
  field strength. This is described by\ 

  <\equation>
    <wide|P|~><around*|(|t|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|1|)>><wide|E|~><around*|(|t|)>
  </equation>

  where <math|\<chi\><rsup|<around*|(|1|)>>> is the linear susceptibility and
  <math|\<epsilon\><rsub|0>> is the electric permittivity of free space. The
  nonlinear response in nonlinear optics is often described as a
  generalization of (1) via a simple power series expansion of
  <math|<wide|P|~><around*|(|t|)>> in <math|<wide|E|~><around*|(|t|)>>, i.e.

  <\equation>
    <wide|P|~><around*|(|t|)>=\<epsilon\><rsub|0><around*|[|
    \<chi\><rsup|<around*|(|1|)>><wide|E|~><around*|(|t|)>+\<chi\><rsup|<around*|(|2|)>><wide|E<rsup|>|~><rsup|2><rsup|><around*|(|t|)>+\<chi\><rsup|<around*|(|3|)>><wide|E<rsup|>|~><rsup|3><rsup|><around*|(|t|)>+\<ldots\>|]>\<equiv\>
    <wide|P|~><rsup|<around*|(|1|)>><around*|(|t|)>+<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>+<wide|P|~><rsup|<around*|(|3|)>><around*|(|t|)>+\<cdots\>
  </equation>

  where the second- and third-order nonlinear optical susceptibilities are
  <math|\<chi\><rsup|<around*|(|2|)>>> and
  <math|\<chi\><rsup|<around*|(|3|)>>> respectively. Note that in writing (1)
  and (2), we have taken <math|<wide|P|~><around*|(|t|)>> and
  <math|<wide|E|~><around*|(|t|)>> to be scalar quantities; their vector
  treatment is shown later, where the second- and third-order become second-
  and third-rank tensors. The quantities <math|<wide|P|~><rsup|<around*|(|2|)>>>,
  and <math|<wide|P|~><rsup|<around*|(|3|)>>> are likewise called second- and
  third-order nonlinear polarizations.\ 

  \;

  <no-indent><yes-indent>An additional assumption is that the polarization at
  time <math|t> is entirely dependent on the electric field strength at that
  exact <math|t> \U this \<#2018\>instantaneous response\<#2019\> assumption
  implies that the material is lossless and dispersionless via the
  Kramers-Kronig relations. I shall elaborate on this in a later section. (1)
  and (2) can be generalized for mediums exhibiting dispersion and loss.
  Generally, the <math|\<chi\>>'s are dependent on the frequency of the
  applied field but because of the instantaneous response assumption, it is
  safe to take them to be constant.\ 

  <subsection|Order-of-magnitude estimations [Boyd(1998)]>

  In the case where the origin of the nonlinearity is electronic, we can make
  simple order-of-magnitude estimates of the size of the susceptibility. Why
  do we talk about electronic origins? The linear optical properties of
  materials are typically dominated by the electronic contribution to the
  overall response, i.e. the linear term within the polarization of such
  materials is generally due to the electronic contribution to the response
  of the material. The electronic response is also essentially instantaneous,
  fulfilling our prior assumption, and this is also the reason this
  contribution dominates in terms of the overall nonlinear optical response.

  A naive expectation we could have is that the lowest-order correction term
  to the polarization, <math|<wide|P|~><rsup|<around*|(|2|)>>>, is comparable
  to the linear response term when the applied field amplitude
  <math|<wide|E|~><around*|(|t|)>> is on the order of the characteristic
  atomic electric field strength, <math|E<rsub|at>=<frac|e|4\<pi\>\<epsilon\><rsub|0>a<rsub|0><rsup|2>>>
  (where <math|a<rsub|0>> is the Bohr radius of the H atom). This leads us to
  expect that when we have conditions where the excitation of the atom occurs
  at a nonresonant frequency, <math|\<chi\><rsup|<around*|(|2|)>>> is of the
  order <math|<frac|\<chi\><rsup|<around*|(|1<rsub|>|)>>|E<rsub|at>>>, and
  <math|\<chi\><rsup|<around*|(|3|)>>> is of the order
  <math|<frac|1|E<rsub|at><rsup|2>>>. These predicted values agree to a good
  degree with experimental measurements. What this tells us is that we can
  express <math|\<chi\><rsup|<around*|(|2|)>>> and
  <math|\<chi\><rsup|<around*|(|3|)>>> in terms of fundamental physical
  constants, which is useful <with|font-series|bold|(for some reason)>.\ 

  \;

  We generally describe nonlinear optical phenomena by expressing the
  polarization in terms of the applied electric field strength, as is shown
  in equation (2). Why is polarization so important? <with|font-series|bold|A
  time-varying polarization can be the source of new components of the EM
  field! >

  <\framed>
    <\example*>
      <with|font-shape|italic|The Inhomogenous Wave Equation>

      \;

      <yes-indent>The driven wave equation in nonlinear optical media is\ 

      <\equation>
        \<nabla\><rsup|2><wide|E|~>-<frac|n<rsup|2>|c<rsup|2>><frac|\<partial\><rsup|2><wide|E|~>|\<partial\>
        t<rsup|2>>=<frac|1|\<epsilon\><rsub|0>c<rsup|2>><frac|\<partial\><rsup|2><wide|P|~><rsup|NL>|\<partial\>
        t<rsup|2>>
      </equation>

      where <math|n> is the usual linear refractive index and <math|c> is the
      speed of light in a vacuum. This is an inhomogenous wave equation where
      the polarization <math|<wide|P|~><rsup|NL>>, associated with the
      nonlinear response, acts as a source term for <math|<wide|E|~>>, i.e.
      it describes the effects on the nonlinear medium due to the sources of
      the applied field. The second-order partial derivative of the
      polarization with respect to time is physically interpreted as
      measuring the acceleration of the charges within the nonlinear medium
      \U a behaviour consistent with Larmor's theorem from classical
      electrodynamics, which states that accelerating charges emit radiation.
    </example*>
  </framed>

  \;

  The power series in Eq. (2) is not necessarily convergent. A situation
  where this might be the case: strong resonant excitation of an atomic
  system. A strong electric field is applied at the resonant frequency of the
  system, which causes a decent amount of the atoms to move away from the
  ground state. When such situations come about, the response and the applied
  electric field amplitude has to be expressed via some other way, which
  we'll explore later. Under nonresonant conditions and if
  <math|<wide|E|~>\<sim\> E<rsub|at>>, Eq. (2) is no longer valid because
  strong photoionization can occur. The laser intensity for a peak field
  strength <math|E<rsub|at>> is around <math|3.5\<times\> 10<rsup|16>
  <text|W/cm><rsup|2>>. This is super intense!

  \;

  <subsection|Generation processes>

  <subsubsection|A qualitative look at second-harmonic generation>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <\padded-center>
    Figure 1: (a) Schematic of second-harmonic generation. (b) Energy level
    diagram describing second-harmonic generation.
  </padded-center>

  \;

  Consider a laser beam with electric field strength given by\ 

  <\equation>
    <wide|E |~><around*|(|t|)>=E<rsub|0> exp <around*|(|-i\<omega\>
    t|)>+<text|c.c.>
  </equation>

  that is incident on a crystal with non-zero second-order susceptibility,
  i.e. <math|\<chi\><rsup|<around*|(|2|)>>\<neq\>0>. By Eq. (2), the
  second-order polarization (the first nonlinear contribution to the
  polarization) created within the crystal is given by\ 

  <\equation>
    <tabular|<tformat|<table|<row|<cell|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>>|<cell|<space|1em>=<space|1em>\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><wide|E|~><rsup|2><around*|(|t|)>>>|<row|<cell|>|<cell|<space|1em>
    =<space|1em> \<epsilon\><rsub|0><rsup|>\<chi\><rsup|<around*|(|2|)>>E<rsub|0<rsup|>><rsup|2>exp<around*|(|-2i\<omega\>t|)>+2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|0>E<rsub|0><rsup|\<ast\>
    >+<text|c.c>>>>>>
  </equation>

  The cross term <math|2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|0>E<rsub|0><rsup|\<ast\>
  >> is a contribution at zero frequency, while the first term <math|
  \<epsilon\><rsub|0><rsup|>\<chi\><rsup|<around*|(|2|)>>E<rsub|0<rsup|>><rsup|2>exp<around*|(|-2i\<omega\>t|)>>
  is a contribution at <math|2\<omega\>>. By Eq. (3), the <math|2\<omega\>>
  term can act as a source of electromagnetic radiation at a frequency of
  <math|2\<omega\>> (hence the name<with|font-shape|italic|
  second-harmonic>). Note that the cross term cannot act as a source term for
  the polarization, since its first derivative with respect to time vanishes.
  Instead, this term describes what is known as
  <with|font-series|bold|optical rectification>; a phenomenon where a steady
  polarization (equivalently, a steady electric field) develops in a
  nonlinear material due to the passing of an intense beam of light. The
  cross term describes this steady polarization.\ 

  \;

  Under optimal experimental conditions, the process can be very highly
  efficient, such that almost all the power in the incident beam contributes
  to the production of radiation at the second-harmonic frequency. We can
  think of the process in terms of an exchange of photons between separate
  frequency levels of the field, as shown in Fig. 1.3.1.(b). Two pump photons
  of frequency <math|\<omega\>> are destroyed and a lone photon of frequency
  <math|2\<omega\>> is created, in a simultaneous fashion in a single
  process. Note that the energy levels above the atomic ground state are
  called \<#2018\>virtual\<#2019\> energy levels since they are not actually
  energy eigenlevels of the free atom; they represent the combined energy of
  an atomic energy eigenstate and one or more photons from the radiation
  field.\ 

  \;

  <subsubsection|Sum- and difference-frequency generation>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <\padded-center>
    Figure 2: (a) Schematic. (b) Energy-level diagram.
  </padded-center>

  \;

  Now we consider a situation where the incident pump field has two distinct
  frequency components, <math|\<omega\><rsub|1>> and
  <math|\<omega\><rsub|2>>. The electric field strength of such a field is
  given by\ 

  <\equation>
    <wide|E|~><around*|(|t|)>=E<rsub|1>exp
    <around*|(|-i\<omega\><rsub|1>t|)>+E<rsub|2> exp
    <around*|(|-i\<omega\><rsub|2>t|)>+<text|c.c.>
  </equation>

  Then following Eq. (2), the second-order polarization is given by\ 

  <\equation*>
    <\align>
      <tformat|<table|<row|<cell|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>=>|<cell|\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><around*|[|<rsup|>E<rsub|1><rsup|2>
      e<rsup|-2i\<omega\><rsub|1>t><rsup|>+E<rsub|2><rsup|2>
      e<rsup|-2i\<omega\><rsub|2>t><rsup|>+2E<rsub|1>E<rsub|2>
      e<rsup|-i<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>t>+2E<rsub|1>E<rsub|2><rsup|\<ast\>>
      e<rsup|-i<around*|(|\<omega\><rsub|1>-\<omega\><rsub|2>|)>t>+<text|c.c.>|]>+2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><around*|[|E<rsub|1>E<rsub|1><rsup|\<ast\>>+E<rsub|2>E<rsub|2><rsup|\<ast\>>|]>>>>>
    </align>
  </equation*>

  \;

  \;

  Note that this is can also be written as
  <math|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>=<big|sum><rsub|n>P<around*|(|\<omega\><rsub|n>|)>e<rsup|-i\<omega\><rsub|n>t>>
  where <math|n> labels positive and negative frequencies
  <math|\<omega\><rsub|n>>:\ 

  <\align>
    <tformat|<table|<row|<cell|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>>|<cell|=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><around*|[|<rsup|>E<rsub|1><rsup|2>
    e<rsup|-2i\<omega\><rsub|1>t><rsup|>+E<rsub|2><rsup|2>
    e<rsup|-2i\<omega\><rsub|2>t><rsup|>+2E<rsub|1>E<rsub|2>
    e<rsup|-i<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>t>+2E<rsub|1>E<rsub|2><rsup|\<ast\>>
    e<rsup|-i<around*|(|\<omega\><rsub|1>-\<omega\><rsub|2>|)>t>+<text|c.c.>|]>+<space|1em>
    <space|1em> <space|1em> <space|1em> <space|1em> <space|8em>
    <space|16em>2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><around*|[|E<rsub|1>E<rsub|1><rsup|\<ast\>>+E<rsub|2>E<rsub|2><rsup|\<ast\>>|]>>>|<row|<cell|>|<cell|=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><rsup|>E<rsub|1><rsup|2>
    e<rsup|-2i\<omega\><rsub|1>t><rsup|>+\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|2><rsup|2>
    e<rsup|-2i\<omega\><rsub|2>t><rsup|>+2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|1>E<rsub|2>
    e<rsup|-i<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>t>+2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|1>E<rsub|2><rsup|\<ast\>>
    e<rsup|-i<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>t>+\<ldots\>>>|<row|<cell|>|<cell|=P<around*|(|2\<omega\><rsub|1>|)>e<rsup|-2i\<omega\><rsub|1>t>+P<around*|(|2\<omega\><rsub|2>|)>e<rsup|-2i\<omega\><rsub|2>t>+P<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>e<rsup|-i<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>t>+P<around*|(|\<omega\><rsub|1>-\<omega\><rsub|2>|)>e<rsup|-i<around*|(|\<omega\><rsub|1>-\<omega\><rsub|2>|)>t>+\<cdots\>>>|<row|<cell|>|<cell|=<big|sum><rsub|n>P<around*|(|\<omega\><rsub|n>|)>e<rsup|-i\<omega\><rsub|n>t>>>>>
  </align>

  where <math|P<around*|(|2\<omega\><rsub|1>|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><rsup|>E<rsub|1><rsup|2>>
  and <math|P<around*|(|2\<omega\><rsub|2>|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|2><rsup|2>>
  describe second-harmonic generation, <math|P<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|1>E<rsub|2>>
  describes sum-frequency generation, (4)
  <math|P<around*|(|\<omega\><rsub|1>-\<omega\><rsub|2>|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|1>E<rsub|2><rsup|\<ast\>>>
  describes difference-frequency generation, and (5)
  <math|P<around*|(|0|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><around*|[|E<rsub|1>E<rsub|1><rsup|\<ast\>>+E<rsub|2>E<rsub|2><rsup|\<ast\>>|]>>
  describes the optical rectification discussed earlier. The complex
  conjugate part of the expression contains the response at the negative
  non-zero frequencies: <math|P<around*|(|-2\<omega\><rsub|1>|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>><rsup|>E<rsup|\<ast\>
  ><rsub|1><rsup|2>>, <math|P<around*|(|-2\<omega\><rsub|2>|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsup|\<ast\>><rsub|2><rsup|2>>,
  <math|P<around*|(|-\<omega\><rsub|1>-\<omega\><rsub|2>|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsup|\<ast\>><rsub|1>E<rsup|\<ast\>><rsub|2>>,
  and <math|P<around*|(|-\<omega\><rsub|1>+\<omega\><rsub|2>|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|2><rsup|>E<rsup|\<ast\>><rsub|1>>.
  Note that other treatments may start with a slightly different convention
  to describe the field amplitudes, leading to the introduction of a factor
  of 1/2 into these equations.\ 

  \;

  We have four distinct non-zero frequency components in the nonlinear
  polarization <math|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>>.
  Typically, only one of the four is present with sufficient intensity to
  dominate the process of light generation via the nonlinear interaction,
  since <math|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>> efficiently
  produces an output signal if a certain phase-matching condition is
  satisfied \U which usually does not happen for more than one component. You
  can choose which frequency component is radiated by properly choosing the
  polarization of the input field and the orientation of the nonlinear
  crystal/material \U what an immensely fascinating ability!

  \;

  <\with|font-series|bold>
    Sum-frequency/difference-frequency generation (SFG/DFG)
  </with>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <center|Figure 3: (a) Sum-frequency/difference-frequency generation
  schematics. (b) Energy-level diagrams.>

  \;

  \;

  The complex amplitude of <math|<wide|P|~><rsup|<around*|(|2|)>><around*|(|t|)>>
  describing SFG is <math|P<around*|(|\<omega\><rsub|1>+\<omega\><rsub|2>|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|1>E<rsub|2>>.
  The process is similar to second-harmonic generation (SHG), but the key
  difference is that the input waves in SFG are of two distinct frequencies.
  Some uses of SFG are (a) producing tunable radiation in the UV spectral
  range, by letting one of the input waves be produced by a fixed-frequency
  visible laser and the other being produced by a frequency-tunable visible
  laser.\ 

  DFG is described by <math|P<around*|(|\<omega\><rsub|1>-\<omega\><rsub|2>|)>=2\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|2|)>>E<rsub|1>E<rsub|2><rsup|\<ast\>>>.
  The generated wave frequency is the difference of the frequencies of the
  incident waves. This process can be used to produce infrared radiation,
  akin to the UV frequency radiation generation described above. In DFG, the
  lower frequency field is amplified instead of the higher frequency field,
  as a higher frequency photon is destroyed and a photon at the lower
  frequency is created in a simultaneous process. Hence, DHG is also called
  <with|font-series|bold|optical parametric amplification>. The atom in the
  polarized material first absorbs a photon of frequency
  <math|\<omega\><rsub|1>> and goes to the highest virtual energy level and
  then upon decaying, emits two photons via stimulation by the
  already-present <math|\<omega\><rsub|2>> field.\ 

  Note that two-photon emission can occur even without the presence of the
  <math|\<omega\><rsub|2>> field; the generated fields in this case are
  weaker since they are created via <with|font-series|bold|spontaneous
  two-photon emission> from a higher virtual energy-level. This process is
  also called <with|font-series|bold|parametric fluorescence> or
  <with|font-series|bold|spontaneous parametric down-conversion (SPDC)>.\ 

  \;

  \;

  <with|font-series|bold|Optical parametric oscillation>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <center|Figure 4: (a) Schematic of an optical parametric oscillator.>

  \;

  In DFG, the presence of a field at frequency <math|\<omega\><rsub|2>> or
  <math|\<omega\><rsub|3>=\<omega\><rsub|1>-\<omega\><rsub|2>> is responsible
  for the emission of additional photons at these frequencies. Consider a
  situation where the nonlinear crystal used in this process is placed within
  an optical resonator (such as a cavity with mirrors at the ends). This
  device (the crystal and the resonator together) is called an
  <with|font-series|bold|optical parametric oscillator> and it can build the
  <math|\<omega\><rsub|2>> and/or <math|\<omega\><rsub|3>> fields up to
  become stronger. These sorts of devices have very broad tuning ranges, so
  they're very useful when we want to generate tunable radiation. This is
  because any frequency <math|\<omega\><rsub|2>\<less\>\<omega\><rsub|1>>
  satisfies <math|\<omega\><rsub|2>+\<omega\><rsub|3>=\<omega\><rsub|1>> for
  some <math|0\<less\>\<omega\><rsub|3>>. We can control the output frequency
  of such a device by adjusting the phase-matching condition. The applied
  field's frequency is the pump frequency, and the desired output field's
  frequency is called the signal frequency. The remaining output frequency is
  called the idler frequency.\ 

  \;

  \;

  \;

  <with|font-series|bold|Third-order nonlinear optical processes>

  \;

  These processes are governed by the third-order contribution to the
  nonlinear polarization

  <\equation>
    <wide|P|~><rsup|<around*|(|3|)>><around*|(|t|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>><wide|E|~><around*|(|t|)><rsup|3>
  </equation>

  \;

  Generally, the electric field comprises many different frequency
  components, making the full, explicit expression of the third-order
  polarization contribution very ugly. We can first consider the simple case
  of a monochromatic applied field, so as to get a sense of what's going on.
  Such a field is described by\ 

  <\equation>
    <wide|E|~><around*|(|t|)>=<with|font|cal|E>cos <around*|(|\<omega\> t|)>
  </equation>

  Then, since <math|cos<rsup|3><around*|(|\<omega\>
  t|)>=<frac|1|4>cos<around*|(|3\<omega\>
  t|)>+<frac|3|4>cos<around*|(|\<omega\> t|)>>,

  <\equation>
    <wide|P|~><around*|(|t|)><rsup|3>=<frac|1|4>\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>><with|font|cal|E><rsup|3>cos<around*|(|3\<omega\>
    t|)>+<frac|3|4>\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>><with|font|cal|E><rsup|3>cos<around*|(|\<omega\>
    t|)>
  </equation>

  \;

  Each of these two terms plays a role in the generation of radiation via the
  third-order polarization. The first is involved in a process called
  <with|font-series|bold|third-harmonic generation.> The first term
  <math|<frac|1|4>\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>><with|font|cal|E><rsup|3>cos<around*|(|3\<omega\>
  t|)>> describes a response at frequency <math|3\<omega\>>, created by an
  applied field of frequency <math|\<omega\>.> Essentially, three photons of
  frequency <math|\<omega\>> are destroyed while a single photon of frequency
  <math|3\<omega\>> is created. The second term
  <math|<frac|3|4>\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>><with|font|cal|E><rsup|3>cos<around*|(|\<omega\>
  t|)>> describes a nonlinear contribution to the polarization at the same
  frequency as that of the applied field, which leads to a nonlinear
  contribution to the refractive index experienced by a wave at frequency
  <math|\<omega\>>. Generally, the refractive index of the material in the
  presence of this sort of nonlinearity can be represented as
  <math|n=n<rsub|0>+n<rsub|2>I> where <math|n<rsub|0>> is the usual linear
  refractive index, \ <math|n<rsub|2>=<frac|3|4n<rsup|2><rsub|0<rsup|>>\<epsilon\><rsub|0>c>\<chi\><rsup|<around*|(|3|)>>>
  is an optical constant characterizing the strength of the optical
  nonlinearity, and <math|I=<frac|1|2>n<rsub|0>\<epsilon\><rsub|0>c<with|font|cal|E><rsup|2>>
  is the intensity of the incident wave. This refractive index is called the
  <with|font-series|bold|intensity-dependent refractive index. >One of the
  processes that can occur when this index comes about is called
  <with|font-series|bold|self-focusing>. A beam of light with non-uniform
  transverse identity distribution (huh?) propagates through a material with
  <math|n<rsub|2>\<gtr\>0>. This makes the material act as a focusing lens,
  reducing the beam radius as the rays curve towards one another. This
  results at an increase in the intensity of the field at the focal spot of
  the beam, so much so that one may encounter optical damage to the material.\ 

  \;

  <\with|font-series|bold>
    Third-order interactions: the general case
  </with>

  \;

  Consider an applied field of the form\ 

  <\equation>
    <wide|E|~><around*|(|t|)>=E<rsub|1>e<rsup|<rsup|-i\<omega\><rsub|1>t>>+E<rsub|2>e<rsup|-i\<omega\><rsub|2>t>+E<rsub|3>e<rsup|-i\<omega\><rsub|3>t>+<text|c.c.>
  </equation>

  which causes the formation of a nonlinear polarization

  <\equation>
    <wide|P|~><rsup|<around*|(|3|)>><around*|(|t|)>=\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>><wide|E|~><around*|(|t|)><rsup|3>.
  </equation>

  Expanding <math|<wide|E<rsup|>|~><around*|(|t|)><rsup|3>>, we find that
  this expression contains 44 different frequency components (if we take
  positive and negative frequencies as distinct). I will not write them out
  for the sake of my own sanity. Apparently it is very interesting to study
  their functional form, which I understand would be to my benefit, but I
  will be honest: I've had a long week.\ 

  \;

  <space|12em><image|/var/folders/6v/9k8d477932730f57l4xyfr700000gn/T/TemporaryItems/NSIRD_screencaptureui_KOQD8H/Screenshot
  2024-11-15 at 4.25.53\<#202F\>PM.png|185pt|185pt||>

  \;

  Here they are in their full glory. In all cases, the frequency argument is
  equal to the sum of the frequencies associated with the <math|E>s on the
  RHS; the convention is that negative frequencies correspond to conjugate
  field amplitudes. For example, in the equation
  <math|P<around*|(|2\<omega\><rsub|1>+\<omega\><rsub|2>|)>=3\<epsilon\><rsub|0>\<chi\><rsup|<around*|(|3|)>>E<rsub|1<rsup|>><rsup|2>E<rsub|2><rsup|>>,
  we have 2 <math|E<rsub|1>>'s and one <math|E<rsub|2> >on the RHS,
  corresponding to <math|2\<omega\><rsub|1>> and <math|\<omega\><rsub|2>>
  respectively. The numerical factor on the RHS is equal to the number of
  distinct permutations of the contributing field frequencies. For example,
  for the ones on the bottom involving arguments
  <math|2\<omega\><rsub|i>\<pm\> \<omega\><rsub|j>>, there are 3 frequencies
  involved (two of which are the same), with only 3 distinct permutations, so
  the numerical factor for these equations is 3. For the ones above those,
  involving arguments like <math|\<omega\><rsub|i>\<pm\>
  \<omega\><rsub|j>\<pm\> \<omega\><rsub|k>> for <math|i\<neq\> j\<neq\> k>,
  there are 6 distinct permutations. We can draw a lot of mixing process
  involving input fields of different frequencies and combinations by reading
  the interaction off of these equations, each of which involves one term out
  of the 44 in the expansion of <math|<wide|E|~><rsup|3>.>\ 

  \;

  <with|font-series|bold|Distinguishing between parametric and nonparametric
  processes>

  \;

  Every process we've talked about so far is a parametric process. The word
  <with|font-shape|italic|parametric> denotes a process where the initial and
  final quantum-mechanical states of the system are identical. In the context
  of the energy diagrams we have been drawing, it means that the population
  of the state can only leave the ground state for those brief times where it
  lives in a virtual energy level. Heisenberg's uncertainty principle helps
  us put a constraint on exactly how long their leases can be: the time
  interval length is of the order of <math|\<hbar\>/\<delta\>E > where
  <math|\<delta\>E> is the energy difference between the virtual level and
  the closest real level. (Is this necessarily the ground state?)\ 

  Process that involve the transfer of population from one real level to
  another are nonparametric. Parametric processes are always describable in
  terms of real susceptibilities, while nonparametric ones are descibed by a
  complex susceptibility, which we will see how to construct soon. Photon
  energy is always conserved in a parametric process but it need not be
  conserved in nonparametric processes

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.3.1|2>>
    <associate|auto-6|<tuple|1.3.2|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>The
      nonlinear optical susceptibility> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Fundamentals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Order-of-magnitude
      estimations [Boyd(1998)] <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Generation processes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.3.1<space|2spc>A qualitative look at
      second-harmonic generation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|1.3.2<space|2spc>Sum- and
      difference-frequency generation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>