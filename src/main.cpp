#include <vector>
#include <string>
#include <iostream>
#include <iterator>
#include "../include/usefulFunctions.hpp"
#include "../include/main.hpp"

using namespace std;

// Given an array of integers nums and an integer target, return indices of the
// two numbers such that they add up to target. You may assume that each input
// would have exactly one solution, and you may not use the same element twice.
// Constraints:
//    2     <= nums.length <= 10^4
//    -10^9 <= nums[i]     <= 10^9
//    -10^9 <= target      <= 10^9
// Follow-up: Can you come up with an algorithm that is less than O(n2) time
// complexity?

void SumSolution::run() {
  int target(9);
  int nArray[] = {2, 11, 7, 15};
  // Convert the int array to a vector
  vector<int> nAsVector(begin(nArray), end(nArray));
  // Run the algo
  vector<int> ans(this->twoSum(nAsVector, target));
  // Got result hopefully
  cout << toString(ans)<< endl;
}

vector<int> SumSolution::twoSum(vector<int> &nums, int target) {
  vector<int>* ret = new vector<int>[2];
    return nums;
}


//https://stackoverflow.com/questions/57548769/cast-an-c-array-to-a-vector
int main(int argc, char *argv[]) {
  //cout << "Testing :D" << endl;
  SumSolution A;
  A.run();
}
