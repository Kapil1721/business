-- CreateTable
CREATE TABLE `users` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NULL,
    `verified` BOOLEAN NOT NULL DEFAULT false,
    `image` VARCHAR(255) NULL,
    `phone` VARCHAR(255) NULL,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `verification` VARCHAR(255) NULL,
    `reviewId` VARCHAR(191) NULL,
    `countryCode` VARCHAR(191) NULL DEFAULT '+1',
    `isTop` BOOLEAN NOT NULL DEFAULT false,

    UNIQUE INDEX `users_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `FooterSetting` (
    `id` VARCHAR(191) NOT NULL,
    `content` LONGTEXT NOT NULL,
    `topsearches` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `FooterSetting_topsearches_key`(`topsearches`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BlogCategory` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `BlogCategory_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `blogComment` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `postid` VARCHAR(191) NOT NULL,
    `active` BOOLEAN NULL,
    `message` VARCHAR(191) NOT NULL,
    `date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Blog` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `alt` VARCHAR(191) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `image` VARCHAR(191) NOT NULL,
    `metaTitle` VARCHAR(191) NOT NULL,
    `metaDescription` LONGTEXT NOT NULL,
    `metaKeywords` VARCHAR(191) NOT NULL,
    `tags` VARCHAR(191) NOT NULL,
    `category` VARCHAR(191) NOT NULL,
    `faq` JSON NOT NULL,
    `table` VARCHAR(191) NULL,
    `date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `reviews` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `review` VARCHAR(191) NOT NULL,
    `rating` INTEGER NOT NULL,
    `date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `active` BOOLEAN NULL,
    `reply` VARCHAR(191) NULL,
    `userId` VARCHAR(191) NULL,
    `listingId` VARCHAR(191) NULL,
    `businessUserId` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `review_report` (
    `id` VARCHAR(191) NOT NULL,
    `report` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `listingId` VARCHAR(191) NOT NULL,
    `reviewId` VARCHAR(191) NOT NULL,
    `date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `category` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `icon` VARCHAR(191) NULL,
    `onTop` BOOLEAN NOT NULL DEFAULT false,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_listing` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` VARCHAR(100) NULL,
    `companyName` VARCHAR(1000) NULL,
    `categoryId` VARCHAR(100) NOT NULL,
    `logo` VARCHAR(1000) NULL,
    `websiteLink` VARCHAR(1000) NOT NULL,
    `about` VARCHAR(1000) NULL,
    `city` VARCHAR(100) NULL,
    `pincode` VARCHAR(100) NULL,
    `physical` BOOLEAN NOT NULL DEFAULT false,
    `email` VARCHAR(100) NULL,
    `phone` VARCHAR(100) NULL,
    `address` VARCHAR(100) NULL,
    `date` DATE NULL,
    `verifyCode` VARCHAR(1000) NULL,
    `status` BOOLEAN NULL,
    `hasAdmin` BOOLEAN NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_users` (
    `id` VARCHAR(191) NOT NULL,
    `fname` VARCHAR(255) NOT NULL,
    `lname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `website` VARCHAR(255) NULL,
    `companyname` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `complete` BOOLEAN NULL DEFAULT false,
    `verified` BOOLEAN NOT NULL DEFAULT false,
    `password` VARCHAR(255) NULL,
    `jobtitle` VARCHAR(255) NULL,
    `phone` VARCHAR(255) NULL,
    `country` VARCHAR(255) NULL,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `verification` VARCHAR(255) NULL,
    `acountType` VARCHAR(255) NOT NULL,
    `static_code` VARCHAR(255) NULL,

    UNIQUE INDEX `business_users_email_key`(`email`),
    UNIQUE INDEX `business_users_website_key`(`website`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_primary_details` (
    `id` VARCHAR(191) NOT NULL,
    `userid` VARCHAR(255) NULL,
    `colorScheme` VARCHAR(191) NULL DEFAULT '#02B9B5',
    `plantype` VARCHAR(255) NULL,
    `icon` VARCHAR(255) NULL,
    `banner` VARCHAR(255) NULL,
    `about` VARCHAR(255) NULL,
    `advertisement` VARCHAR(191) NULL,
    `sociallinks` JSON NULL,
    `category` VARCHAR(191) NULL,
    `taken` BOOLEAN NOT NULL DEFAULT false,
    `website` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `adminStats` BOOLEAN NULL,
    `companyname` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `workemail` VARCHAR(255) NULL,
    `phone` VARCHAR(255) NULL,

    UNIQUE INDEX `business_primary_details_website_key`(`website`),
    UNIQUE INDEX `business_primary_details_workemail_key`(`workemail`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_media` (
    `id` VARCHAR(191) NOT NULL,
    `media_type` VARCHAR(255) NOT NULL,
    `media_url` VARCHAR(255) NOT NULL,
    `businessUsersId` VARCHAR(191) NULL,
    `listingId` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `contact_business_admin` (
    `id` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `listingId` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `question` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `business_advertisement` (
    `id` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NULL,
    `listingid` VARCHAR(191) NULL,
    `ads` JSON NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `premium_user` (
    `id` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NULL,
    `listingid` VARCHAR(191) NULL,
    `planActive` BOOLEAN NOT NULL DEFAULT true,
    `subscriptionId` VARCHAR(191) NULL,
    `currentPlanStart` DATETIME(3) NULL,
    `currentPlanEnd` DATETIME(3) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `subscription` (
    `id` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NULL,
    `listingid` VARCHAR(191) NULL,
    `paymentId` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `reviews` ADD CONSTRAINT `reviews_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reviews` ADD CONSTRAINT `reviews_listingId_fkey` FOREIGN KEY (`listingId`) REFERENCES `business_primary_details`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `review_report` ADD CONSTRAINT `review_report_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `review_report` ADD CONSTRAINT `review_report_listingId_fkey` FOREIGN KEY (`listingId`) REFERENCES `business_primary_details`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `review_report` ADD CONSTRAINT `review_report_reviewId_fkey` FOREIGN KEY (`reviewId`) REFERENCES `reviews`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `business_primary_details` ADD CONSTRAINT `business_primary_details_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `business_users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `business_media` ADD CONSTRAINT `business_media_businessUsersId_fkey` FOREIGN KEY (`businessUsersId`) REFERENCES `business_users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `premium_user` ADD CONSTRAINT `premium_user_subscriptionId_fkey` FOREIGN KEY (`subscriptionId`) REFERENCES `subscription`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
