/*
  Warnings:

  - You are about to drop the `Subject` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Subject";

-- CreateTable
CREATE TABLE "subjects" (
    "id" SERIAL NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "credits" INTEGER NOT NULL DEFAULT 3,
    "active" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "subjects_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "subjects_code_key" ON "subjects"("code");
