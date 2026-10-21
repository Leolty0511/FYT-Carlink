.class public Lcom/autonavi/amapauto/gdarcameraservice/constant/MyDataType;
.super Ljava/lang/Object;
.source "MyDataType.java"


# static fields
.field public static final H264:I = 0x1

.field public static final YUV:I


# instance fields
.field private type:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MyDataType;->type:I

    .line 12
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/autonavi/amapauto/gdarcameraservice/constant/MyDataType;->type:I

    return v0
.end method
