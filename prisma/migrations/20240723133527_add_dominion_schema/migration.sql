-- CreateTable
CREATE TABLE "Card" (
    "id" SERIAL NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "description" TEXT,
    "rules" TEXT,
    "cost" INTEGER NOT NULL,
    "victoryPoints" INTEGER,
    "KingdomTypesId" INTEGER NOT NULL,
    "SetsId" INTEGER NOT NULL,

    CONSTRAINT "Card_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KingdomTypes" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,

    CONSTRAINT "KingdomTypes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Sets" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,

    CONSTRAINT "Sets_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Card_KingdomTypesId_key" ON "Card"("KingdomTypesId");

-- CreateIndex
CREATE UNIQUE INDEX "Card_SetsId_key" ON "Card"("SetsId");

-- AddForeignKey
ALTER TABLE "Card" ADD CONSTRAINT "Card_KingdomTypesId_fkey" FOREIGN KEY ("KingdomTypesId") REFERENCES "KingdomTypes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Card" ADD CONSTRAINT "Card_id_fkey" FOREIGN KEY ("id") REFERENCES "Sets"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
