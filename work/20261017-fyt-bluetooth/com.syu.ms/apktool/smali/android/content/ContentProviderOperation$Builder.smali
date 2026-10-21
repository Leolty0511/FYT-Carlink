.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExpectedCount:Ljava/lang/Integer;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;

.field private mValuesBackReferences:Landroid/content/ContentValues;

.field private mYieldAllowed:Z


# direct methods
.method private constructor <init>(ILandroid/net/Uri;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 4
    iput-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uri must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/ContentProviderOperation$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return p0
.end method

.method public static synthetic access$100(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return p0
.end method


# virtual methods
.method public build()Landroid/content/ContentProviderOperation;
    .locals 3

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const-string v1, "Empty values"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    :goto_0
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 5
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_6
    :goto_1
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only updates, deletes, and asserts can have expected counts"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only updates, deletes, and asserts can have selections"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_2
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 6
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object p0
.end method

.method public withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only updates, deletes, and asserts can have selection back-references"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only inserts and updates can have values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    :cond_2
    if-nez p2, :cond_3

    .line 5
    iget-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_4
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_1

    .line 10
    :cond_5
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 12
    :cond_6
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 14
    :cond_7
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 16
    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_9

    .line 17
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 18
    :cond_9
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 20
    :cond_a
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 22
    :cond_b
    instance-of v0, p2, [B

    if-eqz v0, :cond_c

    .line 23
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_1
    return-object p0

    .line 24
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only inserts, updates, and asserts can have value back-references"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only inserts, updates, and asserts can have value back-references"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only inserts, updates, and asserts can have values"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    return-object p0
.end method

.method public withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return-object p0
.end method
