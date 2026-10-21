.class public Landroid/text/method/HideReturnsTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "SourceFile"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/HideReturnsTransformationMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    const/16 v2, 0xd

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-char v2, v1, v3

    .line 8
    .line 9
    sput-object v1, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    .line 10
    .line 11
    new-array v0, v0, [C

    .line 12
    .line 13
    const v1, 0xfeff

    .line 14
    .line 15
    .line 16
    aput-char v1, v0, v3

    .line 17
    .line 18
    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public getOriginal()[C
    .locals 1

    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method public getReplacement()[C
    .locals 1

    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
