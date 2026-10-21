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

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 1
    sput-object v1, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    new-array v0, v0, [C

    const v1, 0xfeff

    aput-char v1, v0, v3

    .line 2
    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    return-object v0
.end method


# virtual methods
.method public getOriginal()[C
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method public getReplacement()[C
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
