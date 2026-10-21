.class public Landroid/content/UndoOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mData:Ljava/lang/Object;

.field public mManager:Landroid/content/UndoManager;

.field public mOpCount:I

.field public mSavedIdx:I

.field public mStateSeq:I

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    return-object v0
.end method
