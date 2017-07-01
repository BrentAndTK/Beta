Job.delete_all
 #...
Job.create!(
title: 'Lorem Ipsum',
managers: 'John Doe',
description:
%{<p>
  <em> Lorem ipsum dolor sit amet </em>
  Morbi eleifend a sem ac ultricies. Curabitur fermentum rhoncus velit, ac pulvinar erat facilisis mattis. Pellentesque convallis mi lacus, ut vulputate neque egestas faucibus. Nullam quis venenatis leo, finibus ultrices nunc. Duis non purus risus. Ut sit amet tellus dignissim, ornare mauris in, pharetra velit. Proin vestibulum ex a turpis commodo gravida. </p>
},
salary: 30000.00
)

Job.create!(
title: 'Ipsum Lorem',
managers:'Sally Sue',
description:
%{<p>
  <em> Ipsum Dolor sit amet </em>
  Morbi eleifend a sem ac ultricies. Curabitur fermentum rhoncus velit, ac pulvinar erat facilisis mattis. Pellentesque convallis mi lacus, ut vulputate neque egestas faucibus. Nullam quis venenatis leo, finibus ultrices nunc. Duis non purus risus. Ut sit amet tellus dignissim, ornare mauris in, pharetra velit. Proin vestibulum ex a turpis commodo gravida. </p>
},
salary: 60000.00
)

Job.create!(
title: 'Sit Amet',
managers: 'Someone',
description:
%{<p>
  <em> Dolor sit amet </em>
  Morbi eleifend a sem ac ultricies. Curabitur fermentum rhoncus velit, ac pulvinar erat facilisis mattis. Pellentesque convallis mi lacus, ut vulputate neque egestas faucibus. Nullam quis venenatis leo, finibus ultrices nunc. Duis non purus risus. Ut sit amet tellus dignissim, ornare mauris in, pharetra velit. Proin vestibulum ex a turpis commodo gravida. </p>
},
salary: 12.00
)
