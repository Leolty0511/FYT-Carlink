.class final Landroid/app/Activity$ManagedCursor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mReleased:Z

.field private mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    .line 4
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return-void
.end method

.method public static synthetic access$100(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/app/Activity$ManagedCursor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return p0
.end method

.method public static synthetic access$202(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return p1
.end method

.method public static synthetic access$300(Landroid/app/Activity$ManagedCursor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return p0
.end method

.method public static synthetic access$302(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return p1
.end method
