.class public Landroid/net/Credentials;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final gid:I

.field private final pid:I

.field private final uid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/net/Credentials;->pid:I

    .line 5
    .line 6
    iput p2, p0, Landroid/net/Credentials;->uid:I

    .line 7
    .line 8
    iput p3, p0, Landroid/net/Credentials;->gid:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getGid()I
    .locals 1

    iget v0, p0, Landroid/net/Credentials;->gid:I

    return v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Landroid/net/Credentials;->pid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/net/Credentials;->uid:I

    return v0
.end method
