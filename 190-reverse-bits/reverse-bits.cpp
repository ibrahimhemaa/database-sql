class Solution {
public:
    int reverseBits(int n) {
        int ans=0;
        for(int i=0;i<31;i++){
            int open=((n&(1<<i))!=0);
            if(open){
                ans+=(1<<(31-i));
            }
        }
        return ans;
    }
};