/*=============================================================================
 * Title        : Package sample
 *
 * File Name    : foo_project.sv
 * Project      : 
 * Block        : 
 * Tree         : 
 * Designer     : toms74209200 <https://github.com/toms74209200>
 * Created      : 2020/01/09
 * License      : MIT License.
                  http://opensource.org/licenses/mit-license.php
 *============================================================================*/

`include "foo_pkg.sv"

module foo_project ;

initial begin
    $display("%s", str);
    
    $finish;
end

endmodule