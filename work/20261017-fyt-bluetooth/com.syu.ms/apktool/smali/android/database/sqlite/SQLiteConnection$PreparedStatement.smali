.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreparedStatement"
.end annotation


# instance fields
.field public mInCache:Z

.field public mInUse:Z

.field public mNumParameters:I

.field public mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field public mReadOnly:Z

.field public mSql:Ljava/lang/String;

.field public mStatementPtr:I

.field public mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>()V

    return-void
.end method
