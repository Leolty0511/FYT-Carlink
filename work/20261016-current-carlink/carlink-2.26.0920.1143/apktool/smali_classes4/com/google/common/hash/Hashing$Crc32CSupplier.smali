.class abstract enum Lcom/google/common/hash/Hashing$Crc32CSupplier;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/ImmutableSupplier;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Crc32CSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Hashing$Crc32CSupplier;",
        ">;",
        "Lcom/google/common/hash/ImmutableSupplier<",
        "Lcom/google/common/hash/HashFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Hashing$Crc32CSupplier;

.field public static final enum ABSTRACT_HASH_FUNCTION:Lcom/google/common/hash/Hashing$Crc32CSupplier;

.field static final HASH_FUNCTION:Lcom/google/common/hash/HashFunction;


# direct methods
.method private static synthetic $values()[Lcom/google/common/hash/Hashing$Crc32CSupplier;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/common/hash/Hashing$Crc32CSupplier;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/google/common/hash/Hashing$Crc32CSupplier;->ABSTRACT_HASH_FUNCTION:Lcom/google/common/hash/Hashing$Crc32CSupplier;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/hash/Hashing$Crc32CSupplier$1;

    .line 2
    .line 3
    const-string v1, "ABSTRACT_HASH_FUNCTION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Hashing$Crc32CSupplier$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/common/hash/Hashing$Crc32CSupplier;->ABSTRACT_HASH_FUNCTION:Lcom/google/common/hash/Hashing$Crc32CSupplier;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/hash/Hashing$Crc32CSupplier;->$values()[Lcom/google/common/hash/Hashing$Crc32CSupplier;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/common/hash/Hashing$Crc32CSupplier;->$VALUES:[Lcom/google/common/hash/Hashing$Crc32CSupplier;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/hash/Hashing$Crc32CSupplier;->values()[Lcom/google/common/hash/Hashing$Crc32CSupplier;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    aget-object v0, v0, v2

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/common/hash/HashFunction;

    .line 28
    .line 29
    sput-object v0, Lcom/google/common/hash/Hashing$Crc32CSupplier;->HASH_FUNCTION:Lcom/google/common/hash/HashFunction;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/Hashing$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/Hashing$Crc32CSupplier;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Hashing$Crc32CSupplier;
    .locals 1

    const-class v0, Lcom/google/common/hash/Hashing$Crc32CSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/Hashing$Crc32CSupplier;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Hashing$Crc32CSupplier;
    .locals 1

    sget-object v0, Lcom/google/common/hash/Hashing$Crc32CSupplier;->$VALUES:[Lcom/google/common/hash/Hashing$Crc32CSupplier;

    invoke-virtual {v0}, [Lcom/google/common/hash/Hashing$Crc32CSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Hashing$Crc32CSupplier;

    return-object v0
.end method
