-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Botiquin" (
    "id" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "Botiquin_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Medicamento" (
    "id" TEXT NOT NULL,
    "nombre" TEXT NOT NULL,
    "fechaVencimiento" TIMESTAMP(3) NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "SKU" TEXT NOT NULL,
    "botiquinId" TEXT NOT NULL,

    CONSTRAINT "Medicamento_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Botiquin_userId_key" ON "Botiquin"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "Medicamento_SKU_key" ON "Medicamento"("SKU");

-- AddForeignKey
ALTER TABLE "Botiquin" ADD CONSTRAINT "Botiquin_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Medicamento" ADD CONSTRAINT "Medicamento_botiquinId_fkey" FOREIGN KEY ("botiquinId") REFERENCES "Botiquin"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
