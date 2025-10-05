Different types of array initialization values in SystemVerilog:-

1️⃣ Unique Values

Each element is initialized to a specific different value.

Use array literal '{}'.

int arr[5] = '{10, 20, 30, 40, 50};
// -----------arr[0]=10, arr[1]=20, arr[2]=30, arr[3]=40, arr[4]=50------------------//

2️⃣ Repetitive Values

All elements are initialized to the same value.

Use '{}: inside the {}  // 

int arr[5] = '{5{0}};
// ---------------------  arr = {0, 0, 0, 0, 0}----------------------------------//


3️⃣ Default Values

If you don’t specify default: in a simulation, the default initial value depends on type:

Type	Default Value in Simulation
bit	          0
logic        	0
reg	          x (unknown)
int	          0
real	        0.0
          int arr[3];
          // arr = {0,0,0} in simulation (int defaults to 0)


4️⃣ Uninitialized Values

If you don’t initialize in simulation:

logic [7:0] arr[4];


Values are unknown (x) in simulation.





