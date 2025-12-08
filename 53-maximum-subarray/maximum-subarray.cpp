class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        //sliding window problem
        int sum=-1e9,window=-1e9;
        for(int i=0;i<nums.size();i++){
            sum+=nums[i];
            sum=max(sum,nums[i]);
            window=max(sum,window);
        }
        return window;

    }
};