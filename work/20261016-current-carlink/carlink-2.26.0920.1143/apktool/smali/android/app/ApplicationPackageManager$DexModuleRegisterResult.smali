.class Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexModuleRegisterResult"
.end annotation


# instance fields
.field final dexModulePath:Ljava/lang/String;

.field final message:Ljava/lang/String;

.field final success:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->dexModulePath:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->success:Z

    .line 5
    iput-object p3, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/ApplicationPackageManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
