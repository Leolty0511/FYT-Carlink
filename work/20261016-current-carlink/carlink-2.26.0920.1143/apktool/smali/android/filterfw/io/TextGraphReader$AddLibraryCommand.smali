.class Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddLibraryCommand"
.end annotation


# instance fields
.field private mLibraryName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 0

    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    iget-object p1, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    invoke-static {p1}, Landroid/filterfw/core/FilterFactory;->addFilterLibrary(Ljava/lang/String;)V

    return-void
.end method
