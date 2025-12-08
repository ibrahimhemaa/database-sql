class Solution {
public:
    int maxSubarraySumCircular(vector<int>& nums) {
        int glmn=nums[0],glmx=nums[0],mn=0,mx=0,sum=0;
        for(auto &i:nums){
            mn=min(mn+i,i);
            mx=max(mx+i,i);
            
            glmn=min(glmn,mn);
            glmx=max(glmx,mx);
            sum+=i;
        }
        return (sum==glmn?glmx:max(glmx,sum-glmn));
    }
};