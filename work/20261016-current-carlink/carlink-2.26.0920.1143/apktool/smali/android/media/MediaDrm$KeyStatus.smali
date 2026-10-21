.class public final Landroid/media/MediaDrm$KeyStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$KeyStatus$KeyStatusCode;
    }
.end annotation


# static fields
.field public static final STATUS_EXPIRED:I = 0x1

.field public static final STATUS_INTERNAL_ERROR:I = 0x4

.field public static final STATUS_OUTPUT_NOT_ALLOWED:I = 0x2

.field public static final STATUS_PENDING:I = 0x3

.field public static final STATUS_USABLE:I


# instance fields
.field private final mKeyId:[B

.field private final mStatusCode:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/MediaDrm$KeyStatus;->mKeyId:[B

    .line 5
    .line 6
    iput p2, p0, Landroid/media/MediaDrm$KeyStatus;->mStatusCode:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .locals 1

    iget-object v0, p0, Landroid/media/MediaDrm$KeyStatus;->mKeyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/media/MediaDrm$KeyStatus;->mStatusCode:I

    return v0
.end method
