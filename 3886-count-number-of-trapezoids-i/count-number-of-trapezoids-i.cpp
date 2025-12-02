class Solution {
public:
    int countTrapezoids(vector<vector<int>>& points) {
        const int mod = 1e9 + 7;

        unordered_map <int, int> mp;
        for(auto p : points){
            mp[p[1]] += 1;
        }
        long long sum = 0;
        int ans = 0;
        for(auto [y, Cy] : mp){
            long long Vy = (long long)Cy * (Cy - 1) / 2;

            ans = ((ans+(sum * Vy))%mod);

            sum += Vy;
            sum %= mod;
        }
        return ans;
    }
};