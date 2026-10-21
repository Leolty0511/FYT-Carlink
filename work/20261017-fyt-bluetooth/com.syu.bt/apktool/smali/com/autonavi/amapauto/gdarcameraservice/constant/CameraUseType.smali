.class public Lcom/autonavi/amapauto/gdarcameraservice/constant/CameraUseType;
.super Ljava/lang/Object;
.source "CameraUseType.java"


# static fields
.field public static final AR_NAVI_CAMERA:I = 0x0

.field public static final COMMON_CAMERA:I = 0x1


# instance fields
.field private type:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/constant/CameraUseType;->type:I

    .line 11
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/constant/CameraUseType;->type:I

    return v0
.end method
