﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Adz.DAL.EF
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TheAdzEntities : DbContext
    {
        public TheAdzEntities()
            : base("name=TheAdzEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Banner> Banners { get; set; }
        public virtual DbSet<BannerImage> BannerImages { get; set; }
        public virtual DbSet<Billing> Billings { get; set; }
        public virtual DbSet<BillingUser> BillingUsers { get; set; }
        public virtual DbSet<BVD> BVDs { get; set; }
        public virtual DbSet<BVDImage> BVDImages { get; set; }
        public virtual DbSet<CallbackMOLLog> CallbackMOLLogs { get; set; }
        public virtual DbSet<Campaign> Campaigns { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<Currency> Currencies { get; set; }
        public virtual DbSet<Email> Emails { get; set; }
        public virtual DbSet<EmailSendLog> EmailSendLogs { get; set; }
        public virtual DbSet<Facebook> Facebooks { get; set; }
        public virtual DbSet<FlashDeal> FlashDeals { get; set; }
        public virtual DbSet<Game> Games { get; set; }
        public virtual DbSet<GameTransaction> GameTransactions { get; set; }
        public virtual DbSet<Image> Images { get; set; }
        public virtual DbSet<InventoryItemImage> InventoryItemImages { get; set; }
        public virtual DbSet<InventoryItem> InventoryItems { get; set; }
        public virtual DbSet<InventoryItemTag> InventoryItemTags { get; set; }
        public virtual DbSet<InventoryItemType> InventoryItemTypes { get; set; }
        public virtual DbSet<KPointAction> KPointActions { get; set; }
        public virtual DbSet<KPointTrxD> KPointTrxDs { get; set; }
        public virtual DbSet<KPointTrxH> KPointTrxHs { get; set; }
        public virtual DbSet<Logger> Loggers { get; set; }
        public virtual DbSet<MerchantImage> MerchantImages { get; set; }
        public virtual DbSet<Merchant> Merchants { get; set; }
        public virtual DbSet<PreCode> PreCodes { get; set; }
        public virtual DbSet<Shipping> Shippings { get; set; }
        public virtual DbSet<ShippingUser> ShippingUsers { get; set; }
        public virtual DbSet<State> States { get; set; }
        public virtual DbSet<Static> Statics { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<SubscribeEmail> SubscribeEmails { get; set; }
        public virtual DbSet<TransactionDetail> TransactionDetails { get; set; }
        public virtual DbSet<TransactionFreeDeal> TransactionFreeDeals { get; set; }
        public virtual DbSet<Transaction> Transactions { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserStatu> UserStatus { get; set; }
        public virtual DbSet<Variance> Variances { get; set; }
        public virtual DbSet<WebExceptionLogger> WebExceptionLoggers { get; set; }
        public virtual DbSet<Winner> Winners { get; set; }
        public virtual DbSet<WishList> WishLists { get; set; }
        public virtual DbSet<CampaignImage> CampaignImages { get; set; }
        public virtual DbSet<Branch> Branches { get; set; }
        public virtual DbSet<APIKey> APIKeys { get; set; }
        public virtual DbSet<CampaignHistory> CampaignHistories { get; set; }
        public virtual DbSet<Reward> Rewards { get; set; }
        public virtual DbSet<RewardCriteria> RewardCriterias { get; set; }
        public virtual DbSet<RewardImage> RewardImages { get; set; }
        public virtual DbSet<AdminModule> AdminModules { get; set; }
        public virtual DbSet<AdminRole> AdminRoles { get; set; }
        public virtual DbSet<AdminRoleAccess> AdminRoleAccesses { get; set; }
        public virtual DbSet<Tag> Tags { get; set; }
        public virtual DbSet<CampaignPrimaryTag> CampaignPrimaryTags { get; set; }
        public virtual DbSet<CampaignSecondaryTag> CampaignSecondaryTags { get; set; }
        public virtual DbSet<MobileOperator> MobileOperators { get; set; }
        public virtual DbSet<RedemptionStatu> RedemptionStatus { get; set; }
        public virtual DbSet<RewardType> RewardTypes { get; set; }
        public virtual DbSet<Review> Reviews { get; set; }
        public virtual DbSet<Redemption> Redemptions { get; set; }
        public virtual DbSet<MobileLog> MobileLogs { get; set; }
        public virtual DbSet<CampaignRule> CampaignRules { get; set; }
        public virtual DbSet<APILog> APILogs { get; set; }
        public virtual DbSet<UserTrx> UserTrxes { get; set; }
        public virtual DbSet<PushNotificationLog> PushNotificationLogs { get; set; }
        public virtual DbSet<PromotionTrx> PromotionTrxes { get; set; }
        public virtual DbSet<Promotion> Promotions { get; set; }
    }
}
